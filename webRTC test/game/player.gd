extends CharacterBody3D
@onready var player = $"."
@onready var head = $head

var gravity = 9.8
var jump_velocity = 10
var speed = 10
var mouse_sensitivity=0.002
@onready var multiplayer_synchronizer = $MultiplayerSynchronizer

func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	multiplayer_synchronizer.set_multiplayer_authority(str(name).to_int())
func _unhandled_input(event):
	if multiplayer_synchronizer.get_multiplayer_authority() == multiplayer.get_unique_id():
		if event is InputEventMouseMotion:
			player.rotate_y(-event.relative.x*mouse_sensitivity)
			head.rotate_x(-event.relative.y*mouse_sensitivity)
			head.rotation.x=clamp(head.rotation.x,deg_to_rad(-89.9),1)

func _physics_process(delta):
	if multiplayer_synchronizer.get_multiplayer_authority() == multiplayer.get_unique_id():
		if !is_on_floor():
			velocity.y-=gravity*delta
		if Input.is_action_pressed("jump") and is_on_floor():
			velocity.y=jump_velocity
			
		var input_dir=Input.get_vector("move_left","move_rigth","move_foward","move_backward")	
		var direction = (player.basis * Vector3(input_dir.x, 0, input_dir.y)).normalized()
		if direction:
			velocity.x = direction.x * speed
			velocity.z = direction.z * speed
		else:
			velocity.x = 0.0
			velocity.z = 0.0
			
		move_and_slide()
