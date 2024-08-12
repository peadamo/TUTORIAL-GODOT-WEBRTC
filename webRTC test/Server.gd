extends Node

var ws_peer = WebSocketMultiplayerPeer.new()
var web_socker_port = 8915
var players :Dictionary= {}
var lobbies = {}
func _ready():
	ws_peer.peer_connected.connect(ws_peer_connected)
	start_signaling_server()
	
	
	
func ws_peer_connected(id:int):
	print("SIGNALING_SERVER: ","New peer connected, id: ",id)
	players[id]={
		"id":id
	}
	
	var message = {
		"message":"get_id",
		"id":id
	}
	sendMessageToPlayer(id,message)
	all_players_update_lobbiesList()


func _process(delta):
	ws_peer.poll()
	if ws_peer.get_available_packet_count() > 0:
		var packet = ws_peer.get_packet()
		if packet != null:
			var dataString = packet.get_string_from_utf8()
			var data = JSON.parse_string(dataString)
			
			if data.message == "start_new_loby":
				msg_create_lobby(data.hostId)
			elif data.message == "player_want_to_join_lobby":
				msg_player_want_to_join_lobby(data)
			elif data.message == "send_offer":
				msg_send_offer(data)
			elif data.message == "send_answer":
				msg_send_answer(data)
			elif data.message == "send_ice_candidate":
				msg_send_ice_candidate(data)
				
func msg_send_ice_candidate(data):
	var message = {
		"message":"recive_ice_candidate",
		"orig":data.orig,
		"mid_name":data.mid_name,
		"index_name":data.index_name,
		"sdp_name":data.sdp_name
	}
	sendMessageToPlayer(data.dest,message)
		
				
func msg_send_answer(data):
	var message = {
		"message":"recive_answer",
		"orig": data.orig,
		"type":data.type,
		"sdp":data.sdp
	}
	sendMessageToPlayer(data.dest,message)
	
	
	
func msg_send_offer(data):
	var message = {
		"message":"recive_offer",
		"orig": data.orig,
		"type":data.type,
		"sdp":data.sdp
	}
	
	sendMessageToPlayer(data.dest,message)
	
	

func msg_create_lobby(hostId:int):
	var lobby = {
		"code":randi(),
		"host":hostId,
		"players":{}
	}
	
	lobbies[lobby.code]=lobby
	lobbies[lobby.code].players[hostId]=players[hostId]
	
	#1° le aviso al player que creo el lobby
	var lobbyCreatedMesssage = {
		"message": "lobbyCreated",
		"lobbyCode": lobby.code,
	}
	sendMessageToPlayer(hostId,lobbyCreatedMesssage)
	update_client_lobby_data(hostId,lobby.code)
	all_players_update_lobbiesList()
		
func msg_player_want_to_join_lobby(data):
	var lobbyCode : int = data.lobbyCode
	var playerId : int = data.playerId
	lobbies[lobbyCode].players[playerId]={
		"id":playerId
	}
	

	
	update_client_lobby_data(playerId,lobbyCode)
	tell_other_players_in_loby_new_join(playerId,lobbyCode)
	all_players_update_lobbiesList()
	
func tell_other_players_in_loby_new_join(playerCode,lobbyCode):
	var lobbyId : int = lobbyCode
	var newPlayer : int = playerCode
	for p in lobbies[lobbyId].players:
		var playerId = lobbies[lobbyId].players[p].id
		var message = {
			"message": "new_player_join_lobby",
			"newPlayerId":newPlayer,
			"lobbyData":lobbies[lobbyId]
		}
		sendMessageToPlayer(playerId,message)
	
	
	
	
	
	
func update_client_lobby_data(playerID,lobbyCode):
	var message = {
	"message":"succes_join_lobby",
	"lobby_data":lobbies[lobbyCode]
	}
	sendMessageToPlayer(playerID,message)
	
func all_players_update_lobbiesList():
	#2° le aviso a todos los players que actualicen el listado de lobbies
	var messageUpdateLobbieList = {
		"message":"updateLobbyList",
		"lobbiesList":lobbies
	}
	
	for p in players:
		sendMessageToPlayer(players[p].id,messageUpdateLobbieList)
	

func start_signaling_server():
	ws_peer.create_server(web_socker_port)
	print("SIGNALING_SERVER: ","Server started, port: ",web_socker_port)
	




func sendMessageToPlayer(clientId:int, message:Dictionary):
	ws_peer.get_peer(clientId).put_packet(JSON.stringify(message).to_utf8_buffer())















#
## Puerto en el sevidor al que se conectan
#var port = 8915
#var peer = WebSocketMultiplayerPeer.new()
#var clients={}
#var first_peer = 0
#
#
#
#@onready var server_status_label = $Panel/VBoxContainer/serverStatusLabel
#func _ready():
	#peer.peer_connected.connect(peer_connected)
	#peer.peer_disconnected.connect(peer_disconnected)
	#
	#
#@onready var connected_clientes_container = $Panel/VBoxContainer/Panel/Connected_clientes_container
#const SERVER_CONNECTED_CLIENTES = preload("res://server_connected_clientes.tscn")	
#func peer_connected(id):
	#
	#
	#if clients.size()==0:
		#first_peer=id
	#print("Server - "+"Peer Connected : "+str(id))
	#
	#clients[id]={
		#"id":id,
		#"address":peer.get_peer_address(id),
		#"port":peer.get_peer_port(id),
	#}
	#
	#var message = {
		#"message":"get_ID",
		#"id":id
	#}
	#sendMessageToPlayer(id,message)
	#
	#connected_clientes_container.add_child(SERVER_CONNECTED_CLIENTES.instantiate())
	#var last_child = connected_clientes_container.get_child(-1)
	#last_child.client_id.text=str(clients[id].id)
	#last_child.client_data_2.text=str(clients[id].address)
	#last_child.client_data_3.text=str(clients[id].port)
	#
	#
	#if clients.size() == 2:
		#print("hay dos clientes")
		#
	#
		#
		#sendMessageToPlayer(id,{
			#"message":"addPeer",
			#"peerId":first_peer
		#})
		#sendMessageToPlayer(first_peer,{
			#"message":"addPeer",
			#"peerId":id
		#})
		#
		#
		#var sendOffer_Message = {
			#"message":"sendOffer",
			#"id":id,
			#"other_peer": first_peer
			#}
		#sendMessageToPlayer(id,sendOffer_Message)
		#
	#
	#
	#
#func peer_disconnected(id):
	#print("Server - "+"Peer Disconnected : "+str(id))
		#
#func _process(delta):
	#peer.poll()
	#if peer.get_available_packet_count() > 0:
		#var packet = peer.get_packet()
		#if packet != null:
			#var dataString = packet.get_string_from_utf8()
			#var data = JSON.parse_string(dataString)
			##print(data)
			#
			#if data.message == "send_session":
				#var sessionMessage={
					#"message":"recive_session",
					#"origin":data.origin,
					#"type":data.type,
					#"sdp":data.sdp
				#}
				#sendMessageToPlayer(data.dest,sessionMessage)
				#
			#if data.message == "ice_candidate":
				#var candidateMessage={
					#"message":"ice_candidate",
					#"media":data.media,
					#"index":data.index,
					#"name":data.name
				#}
				#sendMessageToPlayer(data.dest,candidateMessage)
#
#
#func start_server():
	#var result = peer.create_server(port)
	#print("Starting Server: "+str(result)+" : "+error_desc(result))
	#server_status_label.text=str(error_desc(result))
#
#
#func _on_start_server_button_button_down():
	#start_server()
#
#func error_desc(error_code):
	#var description
	#match error_code:
		#0:
			#description ="SUCCES Succes Connection"
		#1:
			#description ="FAILED Generic error."
		#2:
			#description ="ERR_UNAVAILABLE Unavailable error."
		#3:
			#description ="ERR_UNCONFIGURED Unconfigured error."
		#4:
			#description ="ERR_UNAUTHORIZED Unauthorized error."
		#5:
			#description ="ERR_PARAMETER_RANGE_ERROR Parameter range error."
		#6:
			#description ="ERR_OUT_OF_MEMORY Out of memory (OOM) error."
		#7:
			#description ="ERR_FILE_NOT_FOUND File: Not found error."
		#8:
			#description ="ERR_FILE_BAD_DRIVE File: Bad drive error."
		#9:
			#description ="ERR_FILE_BAD_PATH File: Bad path error."
		#10:
			#description ="ERR_FILE_NO_PERMISSION File: No permission error."
		#11:
			#description ="ERR_FILE_ALREADY_IN_USE File: Already in use error."
		#12:
			#description ="ERR_FILE_CANT_OPEN File: Can't open error."
		#13:
			#description ="ERR_FILE_CANT_WRITE File: Can't write error."
		#14:
			#description ="ERR_FILE_CANT_READ File: Can't read error."
		#15:
			#description ="ERR_FILE_UNRECOGNIZED File: Unrecognized error."
		#16:
			#description ="ERR_FILE_CORRUPT File: Corrupt error."
		#17:
			#description ="ERR_FILE_MISSING_DEPENDENCIES File: Missing dependencies error."
		#18:
			#description ="ERR_FILE_EOF File: End of file (EOF) error."
		#19:
			#description ="ERR_CANT_OPEN Can't open error."
		#20:
			#description ="ERR_CANT_CREATE Can't create error."
		#21:
			#description ="ERR_QUERY_FAILED Query failed error."
		#22:
			#description ="ERR_ALREADY_IN_USE Already in use error."
		#23:
			#description ="ERR_LOCKED Locked error."
		#24:
			#description ="ERR_TIMEOUT Timeout error."
		#25:
			#description ="ERR_CANT_CONNECT Can't connect error."
		#26:
			#description ="ERR_CANT_RESOLVE Can't resolve error."
		#27:
			#description ="ERR_CONNECTION_ERROR Connection error."
		#28:
			#description ="ERR_CANT_ACQUIRE_RESOURCE Can't acquire resource error."
		#29:
			#description ="ERR_CANT_FORK Can't fork process error."
		#30:
			#description ="ERR_INVALID_DATA Invalid data error."
		#31:
			#description ="ERR_INVALID_PARAMETER Invalid parameter error."
		#32:
			#description ="ERR_ALREADY_EXISTS Already exists error."
		#33:
			#description ="ERR_DOES_NOT_EXIST Does not exist error."
		#34:
			#description ="ERR_DATABASE_CANT_READ Database: Read error."
		#35:
			#description ="ERR_DATABASE_CANT_WRITE Database: Write error."
		#36:
			#description ="ERR_COMPILATION_FAILED Compilation failed error."
		#37:
			#description ="ERR_METHOD_NOT_FOUND Method not found error."
		#38:
			#description ="ERR_LINK_FAILED Linking failed error."
		#39:
			#description ="ERR_SCRIPT_FAILED Script failed error."
		#40:
			#description ="ERR_CYCLIC_LINK Cycling link (import cycle) error."
		#41:
			#description ="ERR_INVALID_DECLARATION Invalid declaration error."
		#42:
			#description ="ERR_DUPLICATE_SYMBOL Duplicate symbol error."
		#43:
			#description ="ERR_PARSE_ERROR Parse error."
		#44:
			#description ="ERR_BUSY Busy error."
		#45:
			#description ="ERR_SKIP Skip error."
		#46:
			#description ="ERR_HELP Help error. Used internally when passing --version or --help as executable options."
		#47:
			#description ="ERR_BUG Bug error, caused by an implementation issue in the method."
	#return description
#
#func sendMessageToPlayer(clientId, message):
	#peer.get_peer(clientId).put_packet(JSON.stringify(message).to_utf8_buffer())
