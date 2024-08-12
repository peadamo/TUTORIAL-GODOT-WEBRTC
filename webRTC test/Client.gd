extends Control

var ws_peer = WebSocketMultiplayerPeer.new()

var rtc_mp : WebRTCMultiplayerPeer = WebRTCMultiplayerPeer.new()

var signalingServerPort :int =8915
var player_id  :int = 0
var rtc_id  :int = 0
var joinded_lobby = null
@onready var client_id_label = $Panel/HBoxContainer/VBoxContainer/HBoxContainer2/Client_ID_label
@onready var host_game_button = $Panel/HBoxContainer/VBoxContainer/HBoxContainer/host_game_button
@onready var lobby_name_label = $Panel/HBoxContainer/VBoxContainer/HBoxContainer/lobby_name_label
@onready var actual_lobby_area = $Panel/HBoxContainer/VBoxContainer/Actual_lobby_Area
@onready var lobbies_area = $Panel/HBoxContainer/VBoxContainer/lobbiesArea


func _ready():
	actual_lobby_area.visible = false
	lobbies_area.visible = true
	
	multiplayer.connected_to_server.connect(_mp_server_connected)
	multiplayer.connection_failed.connect(_mp_server_disconnect)
	multiplayer.server_disconnected.connect(_mp_server_disconnect)
	multiplayer.peer_connected.connect(_mp_peer_connected)
	multiplayer.peer_disconnected.connect(_mp_peer_disconnected)
	
	
func _mp_server_connected() -> void:
	new_client_log("[Multiplayer] Server connected (I am %d)" % rtc_mp.get_unique_id())


func _mp_server_disconnect() -> void:
	new_client_log("[Multiplayer] Server disconnected (I am %d)" % rtc_mp.get_unique_id())


func _mp_peer_connected(id: int) -> void:
	new_client_log("[Multiplayer] Peer %d connected" % id)


func _mp_peer_disconnected(id: int) -> void:
	new_client_log("[Multiplayer] Peer %d disconnected" % id)
	
	
	

func _process(delta):
	rtc_mp.poll()
	
	
	ws_peer.poll()
	if ws_peer.get_available_packet_count() > 0:
		var packet = ws_peer.get_packet()
		if packet != null:
			
			var dataString = packet.get_string_from_utf8()
			
			var data = JSON.parse_string(dataString)
			
			
			if data.message == "get_id":
				msg_get_id(data)
			elif data.message == "lobbyCreated":
				msg_lobbyCreated(data)
			elif data.message == "updateLobbyList":
				msg_updateLobbyList(data)
			elif data.message == "succes_join_lobby":
				msg_succes_join_lobby(data)
			elif data.message == "new_player_join_lobby":
				msg_new_player_join_lobby(data)
			elif data.message == "recive_offer":
				msg_recive_offer(data)
			elif data.message == "recive_answer":
				msg_recive_answer(data)
			elif data.message == "recive_ice_candidate":
				msg_recive_ice_candidate(data)
				
				
func msg_get_id(data):
	player_id=data.id
	client_id_label.text = str(player_id)
	new_client_log(str("Connected, ID: ",player_id))
	host_game_button.disabled = false
	
func msg_lobbyCreated(data):
	new_client_log(str("Lobby_Created, ID: ",data.lobbyCode))
	lobby_name_label.text=str("lobby: ",data.lobbyCode)
	rtc_id = 1
	rtc_mp.create_mesh(rtc_id)
	rtc_mp.create_server()
	multiplayer.multiplayer_peer = rtc_mp
	print(player_id," - Created as server" )
	

	
func msg_succes_join_lobby(data):
	joinded_lobby=data.lobby_data
	new_client_log(str("Succes Join Lobby: ",joinded_lobby.code))
	actual_lobby_area.visible=true
	lobbies_area.visible=false
	update_actual_lobby_gui()
	
	if player_id != joinded_lobby.host:
		rtc_id = player_id
		rtc_mp.create_mesh(rtc_id)
		rtc_mp.create_client(rtc_id)
		multiplayer.multiplayer_peer = rtc_mp
		print(player_id," - Created as client" )
		
	
	
	
	
var lobbies = {}
@onready var lobbies_container = $Panel/HBoxContainer/VBoxContainer/lobbiesArea/lobbiesContainer
const LOBBIE_CLIENT_GUI = preload("res://lobbieClientGUI.tscn")
func msg_updateLobbyList(data):
	for lobby in data.lobbiesList:
		if lobbies.has(lobby) == false:
			lobbies_container.add_child(LOBBIE_CLIENT_GUI.instantiate())
			var lastChild = lobbies_container.get_child(-1)
			
			lobbies[lobby]={
				"lobbyCode":data.lobbiesList[lobby].code,
				"host":data.lobbiesList[lobby].host,
				"players":data.lobbiesList[lobby].players,
				"gui_node":lastChild
			}
			
			lastChild.set_lobby_id(lobbies[lobby].lobbyCode)
			lastChild.set_players_joined(lobbies[lobby].players.size())
			lastChild.clientController=$"."
		else:
			lobbies[lobby].players=data.lobbiesList[lobby].players
			lobbies[lobby].gui_node.set_players_joined(data.lobbiesList[lobby].players.size())
	
	
const PLAYER_IN_LOBBY_GUI = preload("res://player_in_lobby_gui.tscn")	
@onready var players_container = $Panel/HBoxContainer/VBoxContainer/Actual_lobby_Area/players_container
	
var players_in_lobby = {}
func update_actual_lobby_gui():
	for p in joinded_lobby.players:
		if players_in_lobby.has(p):
			pass
		else :
			players_in_lobby[p]=joinded_lobby.players[p]
			players_container.add_child(PLAYER_IN_LOBBY_GUI.instantiate())
			var player_node = players_container.get_child(-1)
			player_node.player_id.text=str(joinded_lobby.players[p].id)
			
			
			
func msg_new_player_join_lobby(data):
	var newPlayerId : int = data.newPlayerId
	if player_id != newPlayerId:
		new_client_log(str("New player join: ",newPlayerId))
		joinded_lobby=data.lobbyData
		update_actual_lobby_gui()
		
		create_peer(newPlayerId)
		
		
		
	else :
		for p in joinded_lobby.players:
			var player_in_lobby_id = joinded_lobby.players[p].id
			if player_in_lobby_id != player_id:
				var player_in_lobby_RTC_id = 0
				if player_in_lobby_id == joinded_lobby.host:
					player_in_lobby_RTC_id=1
				else:
					player_in_lobby_RTC_id=player_in_lobby_id
			
				var peerConnection = create_peer(player_in_lobby_RTC_id)
				peerConnection.create_offer()
		
		
func create_peer(id: int) -> WebRTCPeerConnection:
	var peer: WebRTCPeerConnection = WebRTCPeerConnection.new()
	peer.initialize({
		"iceServers": [ { "urls": ["stun:stun.l.google.com:19302"] } ]
	})
	peer.session_description_created.connect(session_description_created.bind(id))
	peer.ice_candidate_created.connect(new_ice_candidate.bind(id))
	
	print(player_id," - ",id)
	rtc_mp.add_peer(peer, id)
	print("Player: ",player_id," - added peer: ",id)
	return peer
	
func new_ice_candidate(mid_name: String, index_name: int, sdp_name: String, id: int) -> void:
	var dest=0
	if id == 1:
		dest = joinded_lobby.host
	else:
		dest=id
	
	var message = {
		"message":"send_ice_candidate",
		"orig":player_id,
		"dest":dest,
		"mid_name":mid_name,
		"index_name":index_name,
		"sdp_name":sdp_name
	}
	
	sendMessageToServer(message)
	print(player_id," send ICE candidate to: ",id)

func session_description_created(type: String, sdp: String, id: int) -> void:
	#session_description_created
	if not rtc_mp.has_peer(id):
		return
		
	rtc_mp.get_peer(id).connection.set_local_description(type, sdp)
	var dest=0
	if id == 1:
		dest = joinded_lobby.host
	else:
		dest=id
	if type == "offer":
		print(player_id," - offer to: ",id)

		var message = {
			"message":"send_offer",
			"orig": player_id,
			"dest":dest,
			"type":type,
			"sdp":sdp
		}
		sendMessageToServer(message)
	
	else :
		print(player_id," - answer to :",id)
		var message = {
			"message":"send_answer",
			"orig": player_id,
			"dest":dest,
			"type":type,
			"sdp":sdp
		}
		sendMessageToServer(message)
	
	
func msg_recive_offer(data):
	print(player_id," - Recive offer from: ",data.orig)
	if rtc_mp.has_peer(data.orig):
		rtc_mp.get_peer(data.orig).connection.set_remote_description("offer", data.sdp)
		print(player_id," - added rtc_mp: ",data.orig)
	
	
func msg_recive_answer(data):
	print(player_id," - Recive answer from: ",data.orig)
	var rtc_peer_id_to_add = 0
	if data.orig == joinded_lobby.host:
		rtc_peer_id_to_add=1
	else:
		rtc_peer_id_to_add=data.orig
	
	if rtc_mp.has_peer(rtc_peer_id_to_add):
		rtc_mp.get_peer(rtc_peer_id_to_add).connection.set_remote_description("answer", data.sdp)
		print(player_id," - added rtc_mp: ",rtc_peer_id_to_add)
	
func msg_recive_ice_candidate(data):
	print(player_id," - Recive ICE candidate from: ",data.orig)
	var rtc_peer_id_to_add = 0
	if data.orig == joinded_lobby.host:
		rtc_peer_id_to_add=1
	else:
		rtc_peer_id_to_add=data.orig
		
	var index :int = data.index_name
	if rtc_mp.has_peer(rtc_peer_id_to_add):
		rtc_mp.get_peer(rtc_peer_id_to_add).connection.add_ice_candidate(data.mid_name, index, data.sdp_name)
	
	
	
func connect_to_signaling_server():
	#var result = ws_peer.create_client("ws://159.89.86.199:"+str(signalingServerPort))
	var result = ws_peer.create_client("ws://127.0.0.1:"+str(signalingServerPort))
	
	if result == 0:
		new_client_log("Connecting to Signaling Server...")
	else:
		new_client_log("Connection fail")
		
		
func  start_new_lobby():
	new_client_log("Creating lobby...")
	
	var message = {
		"message":"start_new_loby",
		"hostId":player_id
	}
	
	sendMessageToServer(message)
		
		
		
func join_lobby(lobbyCode:int):
	new_client_log(str("Joining Lobby: ",lobbyCode,"..."))
	
	var message = {
		"message":"player_want_to_join_lobby",
		"playerId":player_id,
		"lobbyCode":lobbyCode
	}
	
	sendMessageToServer(message)
		
		
		

func sendMessageToServer(message):
	
	
	ws_peer.put_packet(JSON.stringify(message).to_utf8_buffer())



@onready var v_box_container_2 = $Panel/HBoxContainer/Panel/VBoxContainer2
const CLIENT_LOG = preload("res://client_log.tscn")
func new_client_log(log_text):
	v_box_container_2.add_child(CLIENT_LOG.instantiate())
	v_box_container_2.get_child(-1).text=str(log_text)
	

func _on_connect_to_server_button_button_down():
	connect_to_signaling_server()

func _on_host_game_button_button_down():
	start_new_lobby()










func _on_poke_all_players_button_down():
	poke_player.rpc()
	pass # Replace with function body.



const WORLD = preload("res://game/world.tscn")

@rpc("any_peer","call_local")
func poke_player():
	print("poke")
	new_client_log("startinnnnnnnnnnn")
	get_tree().root.add_child(WORLD.instantiate())
	self.hide()
	sendPlayerInformation.rpc(rtc_mp.get_unique_id())
	
@rpc("any_peer","call_local")
func sendPlayerInformation(id):
	if !GameManager.players.has(id):
		GameManager.players[id]={
			"id":id
		}
		
		
