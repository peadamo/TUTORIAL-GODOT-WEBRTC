GDPC                �                                                                      "   X   res://.godot/exported/133200997/export-31b4e291e1851600f52a3de34b5bc8a4-client_log.scn  @c            ����k�q�ݑȪ�    `   res://.godot/exported/133200997/export-454bfda741486f4d2f2d84e8f91a8e55-player_in_lobby_gui.scn @�      u      ۔�{&�ǆ}v�M��%    T   res://.godot/exported/133200997/export-6951218855914e3e78b0f05086040ef8-Client.scn  0      	      $��c?�W�h�b���e    X   res://.godot/exported/133200997/export-8b03550a1e82db90fe95208a9e9dbb82-main_menu.scn   Ѝ      f      �M
�1CX��9s�R^    h   res://.godot/exported/133200997/export-9e29b3d1f52ccfe4b277223215332167-server_connected_clientes.scn   ��      �      9_% �����L��    `   res://.godot/exported/133200997/export-a584101acc0a9d8ef4ee9fd71b0dad9f-incomming_message.scn    �      �      %��-+��s#\��<pw�    T   res://.godot/exported/133200997/export-c89a2950482f3a432bab03a0591e8d28-server.scn  ��      z      �?X�8�	�'�T��    \   res://.godot/exported/133200997/export-d93e152904013377e38dc88af21c6c62-lobbieClientGUI.scn ��            V/�s��rq�h@IJ��        res://.godot/extension_list.cfg �              
bs�]]3�����*�B    ,   res://.godot/global_script_class_cache.cfg  `�      �       �҈T�c����տ=>L�    D   res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex0s      �      �̛�*$q�*�́        res://.godot/uid_cache.bin  ��      A      �����)����N��       res://Client.gd p      �$      H��h��!O�\>����       res://Client.tscn.remap ��      c       �Q2���g�
}VM��       res://Client_backup.gd   =      &      =�ǅ��1����Z$m    $   res://ConectionErrorsDescription.gd Pf      �      ����U�>}�Y+�J��       res://Server.gd ��      �%      Y���;�i����}�       res://Server_backup.gd  @�            y�	��إ"?�a�ݏ       res://client_log.tscn.remap @�      g       ���'
o��4H+�R       res://icon.svg   �      �      C��=U���^Qu��U3       res://icon.svg.import   �      �       �B�)�&���{{F       res://incomming_message.gd  ��      8       ��	A�q��R�]�2    $   res://incomming_message.tscn.remap  ��      n       G��-�����'U�i��       res://lobbieClientGUI.gd�      �      ̘��oe�*�m���        res://lobbieClientGUI.tscn.remap �      l       2���U��2򹷓Z@8       res://main_menu.tscn.remap  ��      f       �T`$�J��F��{��       res://player_in_lobby_gui.gd@�      �       z����	�Aqc�\    $   res://player_in_lobby_gui.tscn.remap �      p       �s)��{SԵp��x�R       res://project.binary0�      �      591^���r��@ܵ��       res://server.tscn.remap p�      c       6�]��U�s;�i*�v�    $   res://server_connected_clientes.gd  P�      �       �J��>2��:���G�)/    ,   res://server_connected_clientes.tscn.remap  ��      v       =��"�=�P�n�d       res://webrtc/LICENSE.json           4      �i}{~Ш�<+�� %�        res://webrtc/webrtc.gdextension @      +      �s�
�
���(2���            MIT License 

Copyright (c) 2013-2022 Niels Lohmann

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
            [configuration]

entry_symbol = "webrtc_extension_init"
compatibility_minimum = 4.1

[libraries]

linux.debug.x86_64 = "lib/libwebrtc_native.linux.template_debug.x86_64.so"
linux.debug.x86_32 = "lib/libwebrtc_native.linux.template_debug.x86_32.so"
linux.debug.arm64 = "lib/libwebrtc_native.linux.template_debug.arm64.so"
linux.debug.arm32 = "lib/libwebrtc_native.linux.template_debug.arm32.so"
macos.debug = "lib/libwebrtc_native.macos.template_debug.universal.framework"
windows.debug.x86_64 = "lib/libwebrtc_native.windows.template_debug.x86_64.dll"
windows.debug.x86_32 = "lib/libwebrtc_native.windows.template_debug.x86_32.dll"
android.debug.arm64 = "lib/libwebrtc_native.android.template_debug.arm64.so"
android.debug.x86_64 = "lib/libwebrtc_native.android.template_debug.x86_64.so"
ios.debug.arm64 = "lib/libwebrtc_native.ios.template_debug.arm64.dylib"
ios.debug.x86_64 = "lib/libwebrtc_native.ios.template_debug.x86_64.simulator.dylib"

linux.release.x86_64 = "lib/libwebrtc_native.linux.template_release.x86_64.so"
linux.release.x86_32 = "lib/libwebrtc_native.linux.template_release.x86_32.so"
linux.release.arm64 = "lib/libwebrtc_native.linux.template_release.arm64.so"
linux.release.arm32 = "lib/libwebrtc_native.linux.template_release.arm32.so"
macos.release = "lib/libwebrtc_native.macos.template_release.universal.framework"
windows.release.x86_64 = "lib/libwebrtc_native.windows.template_release.x86_64.dll"
windows.release.x86_32 = "lib/libwebrtc_native.windows.template_release.x86_32.dll"
android.release.arm64 = "lib/libwebrtc_native.android.template_release.arm64.so"
android.release.x86_64 = "lib/libwebrtc_native.android.template_release.x86_64.so"
ios.release.arm64 = "lib/libwebrtc_native.ios.template_release.arm64.dylib"
ios.release.x86_64 = "lib/libwebrtc_native.ios.template_release.x86_64.simulator.dylib"
     extends Control

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
	var result = ws_peer.create_client("ws://159.89.86.199:"+str(signalingServerPort))
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

@rpc("any_peer","call_local")
func poke_player():
	print("poke")
	new_client_log("poked")
	
      RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script       Script    res://Client.gd ��������      local://PackedScene_jiyba          PackedScene          	         names "   1      Client    layout_mode    anchors_preset    offset_right    offset_bottom    size_flags_vertical    script    Control    Panel    anchor_right    anchor_bottom    grow_horizontal    grow_vertical    HBoxContainer    VBoxContainer    HBoxContainer2    connect_to_server_button $   theme_override_font_sizes/font_size    text    Button    horizontal_alignment    Label    Client_ID_label    HSeparator    host_game_button 	   disabled    lobby_name_label    lobbiesArea    visible    Title    custom_minimum_size    HSeparator4    HSeparator3    lobbiesContainer    Actual_lobby_Area    players_container    VBoxContainer2    offset_left $   theme_override_constants/separation    Logs    vertical_alignment    poke_all_players    anchor_left    anchor_top    offset_top )   _on_connect_to_server_button_button_down    button_down !   _on_host_game_button_button_down !   _on_poke_all_players_button_down    	   variants                         D     �C                           �?                  Connect To Server    
   Client -        ##########          
   Host Game       #############        
         pA      Lobbies       Actual Lobby 
     �C         �@     �C            Logs
      <�     ��      poke       node_count             nodes     g  ��������       ����                                                           ����               	      
                                   ����               	      
                                   ����                          ����                          ����            	      
                     ����                                      ����                                      ����                          ����             	             ����                         	             ����                                ����                                ����                                ����                          ����                                       ����                       !   ����                       "   ����                          ����                                ����                          ����                                       ����                       #   ����                          ����                             $   ����         %                  &                    '   ����                     (                       ����                        )   ����                *      +      	      
      %      ,                                  conn_count             conns               .   -              
       .   /                     .   0                    node_paths              editable_instances              version             RSRC       extends Control
var peer = WebSocketMultiplayerPeer.new()
var RTCPeer := WebRTCMultiplayerPeer.new()
var RTC_PeerConnection := WebRTCPeerConnection.new()
# Create negotiated data channel.
#var channel = RTC_PeerConnection.create_data_channel("chat", {"negotiated": false, "id": 1})
# Puerto en el sevidor al que se conectan
var port = 8915
var server_ip = "127.0.0.1"
var client_id = 0
var other_peer=0

func _ready():
	#print("channel.ChannelState",channel.get_ready_state())
	print("client ready")
	# Connect all functions.
	RTC_PeerConnection.ice_candidate_created.connect(_on_ice_candidate)
	RTC_PeerConnection.session_description_created.connect(_on_session)
	RTC_PeerConnection.data_channel_received.connect(data_channel_received)
	multiplayer.connected_to_server.connect(RTC_connected_to_server)
	multiplayer.connection_failed.connect(RTC_connection_failed)
	multiplayer.peer_connected.connect(RTC_peer_connected)
	multiplayer.peer_disconnected.connect(RTC_peer_disconnected)
	multiplayer.server_disconnected.connect(RTC_server_disconnected)



func RTC_connected_to_server():
	print(client_id," - Multiplayer - RTC_connected_to_server")
func RTC_connection_failed():
	print(client_id," - Multiplayer - RTC_connection_failed")
func RTC_server_disconnected():
	print(client_id," - Multiplayer - RTC_server_disconnected")
func RTC_peer_connected(id):
	print(client_id," - Multiplayer - RTC_peer_connected - ID: ",id)
func RTC_peer_disconnected(id):
	print(client_id," - Multiplayer - RTC_peer_disconnected - ID: ",id)




func data_channel_received(channel):
	print(client_id,"_data_channel_received")
	print("channel: ",channel)
	
	


func _on_ice_candidate(media: String, index: int, name: String) -> void:
	print(client_id,"_on_ice_candidate")
	#print("media: ",media)
	#print("index: ",index)
	#print("name: ",name)
	
	var message = {
		"message":"ice_candidate",
		"orig":client_id,
		"dest":other_peer,
		"media":media,
		"index":index,
		"name":name
	}
	sendMessageToServer(message)
	
	# Send the ICE candidate to the other peer via the signaling server.
	pass
	#Signaling.send_candidate(String(get_path()), media, index, sdp)


func _on_session(type: String, sdp: String) -> void:
	print(client_id,"_on_session: ",type)
	#print("type: ",type)
	#print("sdp: ",sdp)
	RTC_PeerConnection.set_local_description(type, sdp)
	
	var message={
		"message":"send_session",
		"origin":client_id,
		"dest":other_peer,
		"type":type,
		"sdp":sdp
	}
	sendMessageToServer(message)
	pass
	#Signaling.send_session(String(get_path()), type, sdp)
	
	
@onready var client_id_label = $Panel/VBoxContainer/HBoxContainer2/Client_ID_label
const INCOMMING_MESSAGE = preload("res://incomming_message.tscn")
@onready var messages_container = $Panel/VBoxContainer/VBoxContainer/Messages_container

func _process(delta):
	#print("-----------------------------------------------------")
	#print("channel.ChannelState: ",channel.get_ready_state())
	#print("RTC_PeerConnection.get_connection_state: ",RTC_PeerConnection.get_connection_state())
	#print("RTC_PeerConnection.get_gathering_state: ",RTC_PeerConnection.get_gathering_state())
	#print("RTC_PeerConnection.get_signaling_state: ",RTC_PeerConnection.get_signaling_state())
	#print("multiplayer.multiplayer_peer.get_peers(): ",multiplayer.get_peers())
	
	multiplayer.multiplayer_peer.poll()
	RTC_PeerConnection.poll()
	peer.poll()
	
	if peer.get_available_packet_count() > 0:
		var packet = peer.get_packet()
		if packet != null:
			var dataString = packet.get_string_from_utf8()
			var data = JSON.parse_string(dataString)
			#print(data)
			messages_container.add_child(INCOMMING_MESSAGE.instantiate())
			var last_child=messages_container.get_child(-1)
			last_child.message.text=str(data)
			
			if data.message == "get_ID":
				client_id=data.id
				client_id_label.text = str(client_id)
				RTCPeer.create_mesh(client_id)
				#RTCPeer.create_server()
				multiplayer.multiplayer_peer = RTCPeer


			if data.message == "sendOffer":
				other_peer=data.other_peer
				var offer_result = RTC_PeerConnection.create_offer()
				#RTCPeer.add_peer(RTC_PeerConnection, other_peer)
				
			if data.message == "recive_session":
				print(client_id," - RTCPeer.get_unique_id(): ",RTCPeer.get_unique_id())
				other_peer=data.origin
				if data.type == "offer":
					#RTCPeer.add_peer(RTC_PeerConnection, other_peer)
					pass
					
				
				RTC_PeerConnection.set_remote_description(data.type,data.sdp)

			if data.message == "ice_candidate":
				RTC_PeerConnection.add_ice_candidate(data.media,data.index,data.name)
				
				
			if data.message == "addPeer":
				print(client_id," - addPeer: ",data.peerId)
				RTCPeer.add_peer(RTC_PeerConnection, data.peerId)

	if RTCPeer.get_available_packet_count() > 0:
		var packet = RTC_PeerConnection.get_packet()
		if packet != null:
			var dataString = packet.get_string_from_utf8()
			var data = JSON.parse_string(dataString)
			print(data)

	if multiplayer.multiplayer_peer.get_available_packet_count() > 0:
		var packet = RTC_PeerConnection.get_packet()
		if packet != null:
			var dataString = packet.get_string_from_utf8()
			var data = JSON.parse_string(dataString)
			print(data)




@onready var client_status_description = $Panel/VBoxContainer/HBoxContainer/clientStatusDescription
func connect_to_server(ip):
	var result = peer.create_client("ws://"+server_ip+":"+str(port))
	print("Connect to server: "+str(result)+" : "+error_desc(result))
	client_status_description.text=str(error_desc(result))
	
	
func sendMessageToServer(message):
	peer.put_packet(JSON.stringify(message).to_utf8_buffer())
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
func _on_connect_to_server_button_button_down():
	connect_to_server("")
	pass # Replace with function body.



func error_desc(error_code):
	var description
	match error_code:
		0:
			description ="SUCCES Succes Connection"
		1:
			description ="FAILED Generic error."
		2:
			description ="ERR_UNAVAILABLE Unavailable error."
		3:
			description ="ERR_UNCONFIGURED Unconfigured error."
		4:
			description ="ERR_UNAUTHORIZED Unauthorized error."
		5:
			description ="ERR_PARAMETER_RANGE_ERROR Parameter range error."
		6:
			description ="ERR_OUT_OF_MEMORY Out of memory (OOM) error."
		7:
			description ="ERR_FILE_NOT_FOUND File: Not found error."
		8:
			description ="ERR_FILE_BAD_DRIVE File: Bad drive error."
		9:
			description ="ERR_FILE_BAD_PATH File: Bad path error."
		10:
			description ="ERR_FILE_NO_PERMISSION File: No permission error."
		11:
			description ="ERR_FILE_ALREADY_IN_USE File: Already in use error."
		12:
			description ="ERR_FILE_CANT_OPEN File: Can't open error."
		13:
			description ="ERR_FILE_CANT_WRITE File: Can't write error."
		14:
			description ="ERR_FILE_CANT_READ File: Can't read error."
		15:
			description ="ERR_FILE_UNRECOGNIZED File: Unrecognized error."
		16:
			description ="ERR_FILE_CORRUPT File: Corrupt error."
		17:
			description ="ERR_FILE_MISSING_DEPENDENCIES File: Missing dependencies error."
		18:
			description ="ERR_FILE_EOF File: End of file (EOF) error."
		19:
			description ="ERR_CANT_OPEN Can't open error."
		20:
			description ="ERR_CANT_CREATE Can't create error."
		21:
			description ="ERR_QUERY_FAILED Query failed error."
		22:
			description ="ERR_ALREADY_IN_USE Already in use error."
		23:
			description ="ERR_LOCKED Locked error."
		24:
			description ="ERR_TIMEOUT Timeout error."
		25:
			description ="ERR_CANT_CONNECT Can't connect error."
		26:
			description ="ERR_CANT_RESOLVE Can't resolve error."
		27:
			description ="ERR_CONNECTION_ERROR Connection error."
		28:
			description ="ERR_CANT_ACQUIRE_RESOURCE Can't acquire resource error."
		29:
			description ="ERR_CANT_FORK Can't fork process error."
		30:
			description ="ERR_INVALID_DATA Invalid data error."
		31:
			description ="ERR_INVALID_PARAMETER Invalid parameter error."
		32:
			description ="ERR_ALREADY_EXISTS Already exists error."
		33:
			description ="ERR_DOES_NOT_EXIST Does not exist error."
		34:
			description ="ERR_DATABASE_CANT_READ Database: Read error."
		35:
			description ="ERR_DATABASE_CANT_WRITE Database: Write error."
		36:
			description ="ERR_COMPILATION_FAILED Compilation failed error."
		37:
			description ="ERR_METHOD_NOT_FOUND Method not found error."
		38:
			description ="ERR_LINK_FAILED Linking failed error."
		39:
			description ="ERR_SCRIPT_FAILED Script failed error."
		40:
			description ="ERR_CYCLIC_LINK Cycling link (import cycle) error."
		41:
			description ="ERR_INVALID_DECLARATION Invalid declaration error."
		42:
			description ="ERR_DUPLICATE_SYMBOL Duplicate symbol error."
		43:
			description ="ERR_PARSE_ERROR Parse error."
		44:
			description ="ERR_BUSY Busy error."
		45:
			description ="ERR_SKIP Skip error."
		46:
			description ="ERR_HELP Help error. Used internally when passing --version or --help as executable options."
		47:
			description ="ERR_BUG Bug error, caused by an implementation issue in the method."
	return description


func _on_send_test_packet_button_down():
	pass # Replace with function body.

@rpc("any_peer")
func print_once_per_client():
	print(client_id," - test rcp call")
	
func _on_send_rtc_packet_test_button_button_down():
	#print(client_id," - multiplayer.get_peers(): ",multiplayer.get_peers())
	#print(client_id," - multiplayer.multiplayer_peer.get_peers(): ",multiplayer.multiplayer_peer.get_peers())
	#print(client_id," - multiplayer.multiplayer_peer.is_server(): ",multiplayer.is_server())
	print_once_per_client.rpc()
	
	#var message = {
		#"test":"succes"
	#}
	#print(multiplayer.multiplayer_peer.get_peers())
	#var packetResult = multiplayer.multiplayer_peer.put_packet(JSON.stringify(message).to_utf8_buffer())
	#print(client_id," - packetResult: ",error_desc(packetResult))


           RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script           local://PackedScene_8djwq �          PackedScene          	         names "         Client_log    custom_minimum_size $   theme_override_font_sizes/font_size    text    autowrap_mode    Label    	   variants       
     HC             >   sssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss             node_count             nodes        ��������       ����                                      conn_count              conns               node_paths              editable_instances              version             RSRC           extends RefCounted
class_name Errors

func error_desc(error_code):
	var description
	match error_code:
		0:
			description ="SUCCES Succes Connection"
		1:
			description ="FAILED Generic error."
		2:
			description ="ERR_UNAVAILABLE Unavailable error."
		3:
			description ="ERR_UNCONFIGURED Unconfigured error."
		4:
			description ="ERR_UNAUTHORIZED Unauthorized error."
		5:
			description ="ERR_PARAMETER_RANGE_ERROR Parameter range error."
		6:
			description ="ERR_OUT_OF_MEMORY Out of memory (OOM) error."
		7:
			description ="ERR_FILE_NOT_FOUND File: Not found error."
		8:
			description ="ERR_FILE_BAD_DRIVE File: Bad drive error."
		9:
			description ="ERR_FILE_BAD_PATH File: Bad path error."
		10:
			description ="ERR_FILE_NO_PERMISSION File: No permission error."
		11:
			description ="ERR_FILE_ALREADY_IN_USE File: Already in use error."
		12:
			description ="ERR_FILE_CANT_OPEN File: Can't open error."
		13:
			description ="ERR_FILE_CANT_WRITE File: Can't write error."
		14:
			description ="ERR_FILE_CANT_READ File: Can't read error."
		15:
			description ="ERR_FILE_UNRECOGNIZED File: Unrecognized error."
		16:
			description ="ERR_FILE_CORRUPT File: Corrupt error."
		17:
			description ="ERR_FILE_MISSING_DEPENDENCIES File: Missing dependencies error."
		18:
			description ="ERR_FILE_EOF File: End of file (EOF) error."
		19:
			description ="ERR_CANT_OPEN Can't open error."
		20:
			description ="ERR_CANT_CREATE Can't create error."
		21:
			description ="ERR_QUERY_FAILED Query failed error."
		22:
			description ="ERR_ALREADY_IN_USE Already in use error."
		23:
			description ="ERR_LOCKED Locked error."
		24:
			description ="ERR_TIMEOUT Timeout error."
		25:
			description ="ERR_CANT_CONNECT Can't connect error."
		26:
			description ="ERR_CANT_RESOLVE Can't resolve error."
		27:
			description ="ERR_CONNECTION_ERROR Connection error."
		28:
			description ="ERR_CANT_ACQUIRE_RESOURCE Can't acquire resource error."
		29:
			description ="ERR_CANT_FORK Can't fork process error."
		30:
			description ="ERR_INVALID_DATA Invalid data error."
		31:
			description ="ERR_INVALID_PARAMETER Invalid parameter error."
		32:
			description ="ERR_ALREADY_EXISTS Already exists error."
		33:
			description ="ERR_DOES_NOT_EXIST Does not exist error."
		34:
			description ="ERR_DATABASE_CANT_READ Database: Read error."
		35:
			description ="ERR_DATABASE_CANT_WRITE Database: Write error."
		36:
			description ="ERR_COMPILATION_FAILED Compilation failed error."
		37:
			description ="ERR_METHOD_NOT_FOUND Method not found error."
		38:
			description ="ERR_LINK_FAILED Linking failed error."
		39:
			description ="ERR_SCRIPT_FAILED Script failed error."
		40:
			description ="ERR_CYCLIC_LINK Cycling link (import cycle) error."
		41:
			description ="ERR_INVALID_DECLARATION Invalid declaration error."
		42:
			description ="ERR_DUPLICATE_SYMBOL Duplicate symbol error."
		43:
			description ="ERR_PARSE_ERROR Parse error."
		44:
			description ="ERR_BUSY Busy error."
		45:
			description ="ERR_SKIP Skip error."
		46:
			description ="ERR_HELP Help error. Used internally when passing --version or --help as executable options."
		47:
			description ="ERR_BUG Bug error, caused by an implementation issue in the method."
	return description
             GST2   �   �      ����               � �        �  RIFF�  WEBPVP8L�  /������!"2�H�$�n윦���z�x����դ�<����q����F��Z��?&,
ScI_L �;����In#Y��0�p~��Z��m[��N����R,��#"� )���d��mG�������ڶ�$�ʹ���۶�=���mϬm۶mc�9��z��T��7�m+�}�����v��ح�m�m������$$P�����එ#���=�]��SnA�VhE��*JG�
&����^x��&�+���2ε�L2�@��		��S�2A�/E���d"?���Dh�+Z�@:�Gk�FbWd�\�C�Ӷg�g�k��Vo��<c{��4�;M�,5��ٜ2�Ζ�yO�S����qZ0��s���r?I��ѷE{�4�Ζ�i� xK�U��F�Z�y�SL�)���旵�V[�-�1Z�-�1���z�Q�>�tH�0��:[RGň6�=KVv�X�6�L;�N\���J���/0u���_��U��]���ǫ)�9��������!�&�?W�VfY�2���༏��2kSi����1!��z+�F�j=�R�O�{�
ۇ�P-�������\����y;�[ ���lm�F2K�ޱ|��S��d)é�r�BTZ)e�� ��֩A�2�����X�X'�e1߬���p��-�-f�E�ˊU	^�����T�ZT�m�*a|	׫�:V���G�r+�/�T��@U�N׼�h�+	*�*sN1e�,e���nbJL<����"g=O��AL�WO!��߈Q���,ɉ'���lzJ���Q����t��9�F���A��g�B-����G�f|��x��5�'+��O��y��������F��2�����R�q�):VtI���/ʎ�UfěĲr'�g�g����5�t�ۛ�F���S�j1p�)�JD̻�ZR���Pq�r/jt�/sO�C�u����i�y�K�(Q��7őA�2���R�ͥ+lgzJ~��,eA��.���k�eQ�,l'Ɨ�2�,eaS��S�ԟe)��x��ood�d)����h��ZZ��`z�պ��;�Cr�rpi&��՜�Pf��+���:w��b�DUeZ��ڡ��iA>IN>���܋�b�O<�A���)�R�4��8+��k�Jpey��.���7ryc�!��M�a���v_��/�����'��t5`=��~	`�����p\�u����*>:|ٻ@�G�����wƝ�����K5�NZal������LH�]I'�^���+@q(�q2q+�g�}�o�����S߈:�R�݉C������?�1�.��
�ڈL�Fb%ħA ����Q���2�͍J]_�� A��Fb�����ݏ�4o��'2��F�  ڹ���W�L |����YK5�-�E�n�K�|�ɭvD=��p!V3gS��`�p|r�l	F�4�1{�V'&����|pj� ߫'ş�pdT�7`&�
�1g�����@D�˅ �x?)~83+	p �3W�w��j"�� '�J��CM�+ �Ĝ��"���4� ����nΟ	�0C���q'�&5.��z@�S1l5Z��]�~L�L"�"�VS��8w.����H�B|���K(�}
r%Vk$f�����8�ڹ���R�dϝx/@�_�k'�8���E���r��D���K�z3�^���Vw��ZEl%~�Vc���R� �Xk[�3��B��Ğ�Y��A`_��fa��D{������ @ ��dg�������Mƚ�R�`���s����>x=�����	`��s���H���/ū�R�U�g�r���/����n�;�SSup`�S��6��u���⟦;Z�AN3�|�oh�9f�Pg�����^��g�t����x��)Oq�Q�My55jF����t9����,�z�Z�����2��#�)���"�u���}'�*�>�����ǯ[����82һ�n���0�<v�ݑa}.+n��'����W:4TY�����P�ר���Cȫۿ�Ϗ��?����Ӣ�K�|y�@suyo�<�����{��x}~�����~�AN]�q�9ޝ�GG�����[�L}~�`�f%4�R!1�no���������v!�G����Qw��m���"F!9�vٿü�|j�����*��{Ew[Á��������u.+�<���awͮ�ӓ�Q �:�Vd�5*��p�ioaE��,�LjP��	a�/�˰!{g:���3`=`]�2��y`�"��N�N�p���� ��3�Z��䏔��9"�ʞ l�zP�G�ߙj��V�>���n�/��׷�G��[���\��T��Ͷh���ag?1��O��6{s{����!�1�Y�����91Qry��=����y=�ٮh;�����[�tDV5�chȃ��v�G ��T/'XX���~Q�7��+[�e��Ti@j��)��9��J�hJV�#�jk�A�1�^6���=<ԧg�B�*o�߯.��/�>W[M���I�o?V���s��|yu�xt��]�].��Yyx�w���`��C���pH��tu�w�J��#Ef�Y݆v�f5�e��8��=�٢�e��W��M9J�u�}]釧7k���:�o�����Ç����ս�r3W���7k���e�������ϛk��Ϳ�_��lu�۹�g�w��~�ߗ�/��ݩ�-�->�I�͒���A�	���ߥζ,�}�3�UbY?�Ӓ�7q�Db����>~8�]
� ^n׹�[�o���Z-�ǫ�N;U���E4=eȢ�vk��Z�Y�j���k�j1�/eȢK��J�9|�,UX65]W����lQ-�"`�C�.~8ek�{Xy���d��<��Gf�ō�E�Ӗ�T� �g��Y�*��.͊e��"�]�d������h��ڠ����c�qV�ǷN��6�z���kD�6�L;�N\���Y�����
�O�ʨ1*]a�SN�=	fH�JN�9%'�S<C:��:`�s��~��jKEU�#i����$�K�TQD���G0H�=�� �d�-Q�H�4�5��L�r?����}��B+��,Q�yO�H�jD�4d�����0*�]�	~�ӎ�.�"����%
��d$"5zxA:�U��H���H%jس{���kW��)�	8J��v�}�rK�F�@�t)FXu����G'.X�8�KH;���[             [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://b7meowi3dbhpy"
path="res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex"
metadata={
"vram_texture": false
}
                extends VBoxContainer
@onready var message = $message


        RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script       Script    res://incomming_message.gd ��������      local://PackedScene_8jni4          PackedScene          	         names "         Incomming Message    script    VBoxContainer    HSeparator2    layout_mode    HSeparator    message    custom_minimum_size    size_flags_vertical $   theme_override_font_sizes/font_size    text    autowrap_mode    Label    	   variants                       
         �A         	         sssss             node_count             nodes     %   ��������       ����                            ����                           ����                     	      
                      conn_count              conns               node_paths              editable_instances              version             RSRC      extends Control
var lobbyId = 0
var clientController : Control

@onready var lobby_id_label = $lobby_id_label

func set_lobby_id(lobbyCode:int):
	lobbyId=lobbyCode
	lobby_id_label.text = str("ID: ",lobbyCode)
	
@onready var lobby_player_count = $lobby_player_count
func set_players_joined(players_count:int):
	lobby_player_count.text=str(players_count,"/4")


func _on_button_button_down():
	clientController.join_lobby(lobbyId)

  RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script       Script    res://lobbieClientGUI.gd ��������      local://PackedScene_ojcb5          PackedScene          	         names "         lobbie    custom_minimum_size    layout_mode    anchors_preset    script    Control    lobby_id_label    anchor_top    anchor_bottom    offset_top    offset_right    offset_bottom    grow_vertical    text    Label    lobby_player_count    anchor_left    anchor_right    offset_left    grow_horizontal    Button    HSeparator    HSeparator2    _on_button_button_down    button_down    	   variants       
         B                                         ?     8�     �B     8A            ID: 3987018584            �?     �A     @@     >B      1/4            ,�     x�     xA      JOIN            ��   
        �@      node_count             nodes     �   ��������       ����                                              ����	                           	      
         	      
                           ����                                       	      
               
      
                           ����                                             	                     
                           ����                                 	         
                           ����                              
             conn_count             conns                                      node_paths              editable_instances              version             RSRC        RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script       PackedScene    res://Client.tscn �D����      local://PackedScene_m0b1r          PackedScene          	         names "   	   
   Main Menu    layout_mode    anchors_preset    anchor_right    anchor_bottom    grow_horizontal    grow_vertical    Control    Client    	   variants                        �?                                   node_count             nodes        ��������       ����                                                    ���                               conn_count              conns               node_paths              editable_instances              version             RSRC          extends Control
@onready var player_id = $player_id

@onready var player_type = $player_type


func _on_poke_player_button_button_down():
	poke_player.rpc()
	pass # Replace with function body.

@rpc("any_peer")
func poke_player():
	print("poke")
          RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script       Script    res://player_in_lobby_gui.gd ��������      local://PackedScene_2gf7p          PackedScene          	         names "         player_in_lobby_gui    custom_minimum_size    layout_mode    anchors_preset    offset_right    offset_bottom    script    Control    Panel    anchor_right    anchor_bottom    grow_horizontal    grow_vertical 
   player_id    offset_left    offset_top    text    Label    player_type    poke_player_button    anchor_left    anchor_top    Button #   _on_poke_player_button_button_down    button_down    	   variants       
         B                  uC     B                           �?            A     �@     �B     �A   
   983131158      �B      C      client             ?     <�     x�     xA      poke       node_count             nodes     k   ��������       ����                                                          ����               	      
         	      	                     ����            
                                             ����                                                         ����                           	      
                                 	                   conn_count             conns                                      node_paths              editable_instances              version             RSRC           extends Node

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
         RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script       Script    res://Server.gd ��������      local://PackedScene_wamdt          PackedScene          	         names "         Server    layout_mode    anchor_right    anchor_bottom    offset_right    offset_bottom    grow_horizontal    grow_vertical    size_flags_horizontal    script    Control    	   variants                ���>   ��>   ��m�   �s�                             node_count             nodes        ��������
       ����	                                                    	                conn_count              conns               node_paths              editable_instances              version             RSRC      extends Node

# Puerto en el sevidor al que se conectan
var port = 8915
var peer = WebSocketMultiplayerPeer.new()
var clients={}
var first_peer = 0



@onready var server_status_label = $Panel/VBoxContainer/serverStatusLabel
func _ready():
	peer.peer_connected.connect(peer_connected)
	peer.peer_disconnected.connect(peer_disconnected)
	
	
@onready var connected_clientes_container = $Panel/VBoxContainer/Panel/Connected_clientes_container
const SERVER_CONNECTED_CLIENTES = preload("res://server_connected_clientes.tscn")	
func peer_connected(id):
	
	
	if clients.size()==0:
		first_peer=id
	print("Server - "+"Peer Connected : "+str(id))
	
	clients[id]={
		"id":id,
		"address":peer.get_peer_address(id),
		"port":peer.get_peer_port(id),
	}
	
	var message = {
		"message":"get_ID",
		"id":id
	}
	sendMessageToPlayer(id,message)
	
	connected_clientes_container.add_child(SERVER_CONNECTED_CLIENTES.instantiate())
	var last_child = connected_clientes_container.get_child(-1)
	last_child.client_id.text=str(clients[id].id)
	last_child.client_data_2.text=str(clients[id].address)
	last_child.client_data_3.text=str(clients[id].port)
	
	
	if clients.size() == 2:
		print("hay dos clientes")
		
	
		
		sendMessageToPlayer(id,{
			"message":"addPeer",
			"peerId":first_peer
		})
		sendMessageToPlayer(first_peer,{
			"message":"addPeer",
			"peerId":id
		})
		
		
		var sendOffer_Message = {
			"message":"sendOffer",
			"id":id,
			"other_peer": first_peer
			}
		sendMessageToPlayer(id,sendOffer_Message)
		
	
	
	
func peer_disconnected(id):
	print("Server - "+"Peer Disconnected : "+str(id))
		
func _process(delta):
	peer.poll()
	if peer.get_available_packet_count() > 0:
		var packet = peer.get_packet()
		if packet != null:
			var dataString = packet.get_string_from_utf8()
			var data = JSON.parse_string(dataString)
			#print(data)
			
			if data.message == "send_session":
				var sessionMessage={
					"message":"recive_session",
					"origin":data.origin,
					"type":data.type,
					"sdp":data.sdp
				}
				sendMessageToPlayer(data.dest,sessionMessage)
				
			if data.message == "ice_candidate":
				var candidateMessage={
					"message":"ice_candidate",
					"media":data.media,
					"index":data.index,
					"name":data.name
				}
				sendMessageToPlayer(data.dest,candidateMessage)


func start_server():
	var result = peer.create_server(port)
	print("Starting Server: "+str(result)+" : "+error_desc(result))
	server_status_label.text=str(error_desc(result))


func _on_start_server_button_button_down():
	start_server()

func error_desc(error_code):
	var description
	match error_code:
		0:
			description ="SUCCES Succes Connection"
		1:
			description ="FAILED Generic error."
		2:
			description ="ERR_UNAVAILABLE Unavailable error."
		3:
			description ="ERR_UNCONFIGURED Unconfigured error."
		4:
			description ="ERR_UNAUTHORIZED Unauthorized error."
		5:
			description ="ERR_PARAMETER_RANGE_ERROR Parameter range error."
		6:
			description ="ERR_OUT_OF_MEMORY Out of memory (OOM) error."
		7:
			description ="ERR_FILE_NOT_FOUND File: Not found error."
		8:
			description ="ERR_FILE_BAD_DRIVE File: Bad drive error."
		9:
			description ="ERR_FILE_BAD_PATH File: Bad path error."
		10:
			description ="ERR_FILE_NO_PERMISSION File: No permission error."
		11:
			description ="ERR_FILE_ALREADY_IN_USE File: Already in use error."
		12:
			description ="ERR_FILE_CANT_OPEN File: Can't open error."
		13:
			description ="ERR_FILE_CANT_WRITE File: Can't write error."
		14:
			description ="ERR_FILE_CANT_READ File: Can't read error."
		15:
			description ="ERR_FILE_UNRECOGNIZED File: Unrecognized error."
		16:
			description ="ERR_FILE_CORRUPT File: Corrupt error."
		17:
			description ="ERR_FILE_MISSING_DEPENDENCIES File: Missing dependencies error."
		18:
			description ="ERR_FILE_EOF File: End of file (EOF) error."
		19:
			description ="ERR_CANT_OPEN Can't open error."
		20:
			description ="ERR_CANT_CREATE Can't create error."
		21:
			description ="ERR_QUERY_FAILED Query failed error."
		22:
			description ="ERR_ALREADY_IN_USE Already in use error."
		23:
			description ="ERR_LOCKED Locked error."
		24:
			description ="ERR_TIMEOUT Timeout error."
		25:
			description ="ERR_CANT_CONNECT Can't connect error."
		26:
			description ="ERR_CANT_RESOLVE Can't resolve error."
		27:
			description ="ERR_CONNECTION_ERROR Connection error."
		28:
			description ="ERR_CANT_ACQUIRE_RESOURCE Can't acquire resource error."
		29:
			description ="ERR_CANT_FORK Can't fork process error."
		30:
			description ="ERR_INVALID_DATA Invalid data error."
		31:
			description ="ERR_INVALID_PARAMETER Invalid parameter error."
		32:
			description ="ERR_ALREADY_EXISTS Already exists error."
		33:
			description ="ERR_DOES_NOT_EXIST Does not exist error."
		34:
			description ="ERR_DATABASE_CANT_READ Database: Read error."
		35:
			description ="ERR_DATABASE_CANT_WRITE Database: Write error."
		36:
			description ="ERR_COMPILATION_FAILED Compilation failed error."
		37:
			description ="ERR_METHOD_NOT_FOUND Method not found error."
		38:
			description ="ERR_LINK_FAILED Linking failed error."
		39:
			description ="ERR_SCRIPT_FAILED Script failed error."
		40:
			description ="ERR_CYCLIC_LINK Cycling link (import cycle) error."
		41:
			description ="ERR_INVALID_DECLARATION Invalid declaration error."
		42:
			description ="ERR_DUPLICATE_SYMBOL Duplicate symbol error."
		43:
			description ="ERR_PARSE_ERROR Parse error."
		44:
			description ="ERR_BUSY Busy error."
		45:
			description ="ERR_SKIP Skip error."
		46:
			description ="ERR_HELP Help error. Used internally when passing --version or --help as executable options."
		47:
			description ="ERR_BUG Bug error, caused by an implementation issue in the method."
	return description

func sendMessageToPlayer(clientId, message):
	peer.get_peer(clientId).put_packet(JSON.stringify(message).to_utf8_buffer())
  extends Control

@onready var client_id = $Client_ID
@onready var client_data_2 = $Client_data_2
@onready var client_data_3 = $Client_data_3

  RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script       Script #   res://server_connected_clientes.gd ��������      local://PackedScene_fa12q          PackedScene          	         names "         Server_Connected_Clientes    custom_minimum_size    layout_mode    anchors_preset    script    Control 
   Client_ID    anchor_top    anchor_bottom    offset_top    offset_right    offset_bottom    grow_vertical    text    Label    Client_data_2    anchor_left    anchor_right    offset_left    grow_horizontal    Client_data_3    	   variants       
         �A                                         ?     8�     �A     8A            ID            ��     �A      Data 2
            �?     H�      Data 3
       node_count             nodes     h   ��������       ����                                              ����	                           	      
         	      
                           ����                                             	      
         	      
      
                           ����                                             	         	            
                   conn_count              conns               node_paths              editable_instances              version             RSRC         [remap]

path="res://.godot/exported/133200997/export-6951218855914e3e78b0f05086040ef8-Client.scn"
             [remap]

path="res://.godot/exported/133200997/export-31b4e291e1851600f52a3de34b5bc8a4-client_log.scn"
         [remap]

path="res://.godot/exported/133200997/export-a584101acc0a9d8ef4ee9fd71b0dad9f-incomming_message.scn"
  [remap]

path="res://.godot/exported/133200997/export-d93e152904013377e38dc88af21c6c62-lobbieClientGUI.scn"
    [remap]

path="res://.godot/exported/133200997/export-8b03550a1e82db90fe95208a9e9dbb82-main_menu.scn"
          [remap]

path="res://.godot/exported/133200997/export-454bfda741486f4d2f2d84e8f91a8e55-player_in_lobby_gui.scn"
[remap]

path="res://.godot/exported/133200997/export-c89a2950482f3a432bab03a0591e8d28-server.scn"
             [remap]

path="res://.godot/exported/133200997/export-9e29b3d1f52ccfe4b277223215332167-server_connected_clientes.scn"
          list=Array[Dictionary]([{
"base": &"RefCounted",
"class": &"Errors",
"icon": "",
"language": &"GDScript",
"path": "res://ConectionErrorsDescription.gd"
}])
    <svg height="128" width="128" xmlns="http://www.w3.org/2000/svg"><rect x="2" y="2" width="124" height="124" rx="14" fill="#363d52" stroke="#212532" stroke-width="4"/><g transform="scale(.101) translate(122 122)"><g fill="#fff"><path d="M105 673v33q407 354 814 0v-33z"/><path fill="#478cbf" d="m105 673 152 14q12 1 15 14l4 67 132 10 8-61q2-11 15-15h162q13 4 15 15l8 61 132-10 4-67q3-13 15-14l152-14V427q30-39 56-81-35-59-83-108-43 20-82 47-40-37-88-64 7-51 8-102-59-28-123-42-26 43-46 89-49-7-98 0-20-46-46-89-64 14-123 42 1 51 8 102-48 27-88 64-39-27-82-47-48 49-83 108 26 42 56 81zm0 33v39c0 276 813 276 813 0v-39l-134 12-5 69q-2 10-14 13l-162 11q-12 0-16-11l-10-65H447l-10 65q-4 11-16 11l-162-11q-12-3-14-13l-5-69z"/><path d="M483 600c3 34 55 34 58 0v-86c-3-34-55-34-58 0z"/><circle cx="725" cy="526" r="90"/><circle cx="299" cy="526" r="90"/></g><g fill="#414042"><circle cx="307" cy="532" r="60"/><circle cx="717" cy="532" r="60"/></g></g></svg>
          	   �D����   res://Client.tscnVF�X>�A   res://client_log.tscn�uˀYȢ@   res://icon.svgWQc�hd&   res://incomming_message.tscn��ö���X   res://lobbieClientGUI.tscn�B\�?��`   res://main_menu.tscn�"27�k�D   res://player_in_lobby_gui.tscn��>��V   res://server.tscn��M�YEC$   res://server_connected_clientes.tscn               res://webrtc/webrtc.gdextension
ECFG      application/config/name         webRTC test    application/run/main_scene         res://main_menu.tscn   application/config/features$   "         4.2    Forward Plus       application/config/icon         res://icon.svg  "   display/window/size/viewport_width      @  #   display/window/size/viewport_height      D  #   rendering/renderer/rendering_method         gl_compatibility 