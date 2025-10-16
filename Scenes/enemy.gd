extends Node2D
var direction = -1


func _process(delta: float) -> void:
	position.x+=  direction * SPEED * delta 


const SPEED = 100



func _on_area_2d_body_entered(body: Node2D) -> void:
	print("munched")
	queue_free()
