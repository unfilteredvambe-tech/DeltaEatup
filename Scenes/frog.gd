extends Node2D
@onready var target = $"."/dudeplayer
const SPEED = 80

var direction =1


func _ready():
	print("i am a frog")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.x+=  direction * SPEED * delta 


func _on_frogfood_body_entered(body:CharacterBody2D) -> void:
	print("eaten..")
	queue_free()

@onready var ray_cast_right = $frogfood/RayCastright
@onready var ray_cast_left = $frogfood/RayCastleft


   



 
