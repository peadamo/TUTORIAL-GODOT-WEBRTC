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

