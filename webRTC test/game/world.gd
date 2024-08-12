extends Node3D
@onready var spawns = $spawns

const PLAYER = preload("res://game/player.tscn")
# Called when the node enters the scene tree for the first time.
func _ready():
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_timer_timeout():
	var index = 0
	print(GameManager.players)
	for i in GameManager.players:
		var currentPlayer = PLAYER.instantiate()
		currentPlayer.name=str(GameManager.players[i].id)
		add_child(currentPlayer)
		for spawn in spawns.get_children():
			if spawn.name.to_int() == index:
				currentPlayer.global_position = spawn.global_position
		index+=1
