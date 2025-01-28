extends Node2D

var velocy: int = 100
var velocx: int = 100
var diry: int = 1
var dirx: int = 1

func _ready() -> void:
	pass # Replace with function body.

func _process(delta: float) -> void:
	position.y = position.y + diry * (velocy * delta)
	position.x = position.x + dirx * (velocx * delta)
	#print(position)
	if position.y >= 640:
		diry = -diry
		#position.y = 640
	elif position.y <= 10:
		diry = - diry
