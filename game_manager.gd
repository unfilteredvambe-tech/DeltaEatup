extends Node2D
var score: int = 0

@onready var score_label: Label = $score_label
@onready var frog: Node2D = $"../frog"
  



func add_point():
	score += 1
	print(score)

	var frog_text = "frog" if score == 1 else "frogs"
	score_label.text = "You ate " + str(score) + " " + frog_text + "."
