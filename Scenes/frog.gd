extends Node2D
@onready var target = $"."/dudeplayer
const SPEED = 350
var direction = 1
@onready var animated_sprite = $frogfood/AnimatedSprite2D
@onready var game_manager: Node2D = $"../game manager"
@onready var score_label: Label = $"../game manager/score_label"



func _ready():
	print("i am a frog")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.x+=  direction * SPEED * delta 
	if ray_cast_left.is_colliding():
		direction=1
		animated_sprite.flip_h= true
	if ray_cast_right.is_colliding():
		direction=-1
		animated_sprite.flip_h= false
		game_manager.add_point()
func _on_frogfood_body_entered(body:CharacterBody2D) -> void:
	animated_sprite.play("hurt")
	print("eaten..")
	queue_free()
	
	game_manager.add_point()
@onready var ray_cast_right = $frogfood/RayCastright
@onready var ray_cast_left = $frogfood/RayCastleft




   



 
