extends Node2D

var velocy: int = 100
var velocx: int = 300
var diry: int = 1
var dirx: int = 1

func _ready() -> void:
	pass # Replace with function body.

func _process(delta: float) -> void:
	position.y = position.y + diry * (velocy * delta)
	position.x = position.x + dirx * (velocx * delta)
	#print("bola esta em: ", position)
	if position.y >= 645:
		diry = -diry
		#position.y = 640
	elif position.y <= 25:
		diry = - diry
	if position.x >= 1145:
		dirx = -dirx
	elif position.x <= 5:
		dirx = -dirx
	

func acertaramBola(area: Area2D) -> void:
	diry = -diry
