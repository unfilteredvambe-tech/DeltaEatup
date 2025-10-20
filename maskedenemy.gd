extends CharacterBody2D

@export var flee_distance:float = 300.0 
var direction = -1
@onready var player = get_node("/root/Game/CharacterBody2D")
var is_following_player = false
const SPEED = 200



func _physics_process(delta):
	var to_player  = (player.global_position-global_position)
	if is_following_player :
		var direction = (player.position - position).normalized()
		velocity =direction * SPEED
 	

	
	move_and_slide()


func _on_area_2d_body_entered(body: Node2D) -> void:
	is_following_player = true
	player = body
	print("eaten..")
	queue_free()

func _on_area_2d_body_exited(body: Node2D) -> void:
	is_following_player = false
	
