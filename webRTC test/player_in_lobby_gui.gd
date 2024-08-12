extends Control
@onready var player_id = $player_id

@onready var player_type = $player_type


func _on_poke_player_button_button_down():
	poke_player.rpc()
	pass # Replace with function body.

@rpc("any_peer")
func poke_player():
	print("poke")
