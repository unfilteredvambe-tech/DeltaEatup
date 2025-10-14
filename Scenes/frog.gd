extends Node2D
 
const SPEED = 80

func _ready():
	print("i am a frog")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.x+=  SPEED * delta 


func _on_frogfood_body_entered(body:CharacterBody2D) -> void:
	print("eaten..")
	queue_free()
