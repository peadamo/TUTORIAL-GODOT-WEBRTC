extends Control
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

