extends Node2D
@onready var frog: Node2D = $frog


func _ready() -> void:
	spawn_frog()
	spawn_frog()
	spawn_frog()
	spawn_frog()
	spawn_frog()



func spawn_frog():

	var new_frog = preload("uid://sjtwdqn65xp1").instantiate()
	%PathFollow2D.progress_ratio = randf()
	new_frog.global_position = %PathFollow2D.global_position
	add_child(new_frog)

	
