extends Node2D

class_name BOLA

var velocy: int = randi_range(300,500)
var velocx: int = randi_range(50,400)
var diry: int = 1
var dirx: int = 0

signal gameover #indica o gameover para as outras classes

func _ready() -> void:
	var aleatorio = randi_range(0,1)
	if aleatorio == 1:
		dirx = 1
	else:
		dirx = -1
	print("Dirx vale ", dirx)

func _process(delta: float) -> void:
	position.y = position.y + diry * (velocy * delta)
	position.x = position.x + dirx * (velocx * delta)
	#print("bola esta em: ", position)
	if position.y >= 645:
		gameover.emit()
		resetarPokemon()
		#diry = -diry
		#position.y = 640
	elif position.y <= 25:
		diry = - diry
	if position.x >= 1145:
		dirx = -dirx
	elif position.x <= 5:
		dirx = -dirx
	
var estimativa = 0

func resetarPokemon() -> void:
	velocy = randi_range(300,500)
	velocx = randi_range(50,400)
	get_node("Pokemon1").visible = true
	get_node("Pokemon2").visible = false
	estimativa = 0

func acertaramBola(area: Area2D) -> void:
	#print(area.name)
	diry = -diry
	velocx += randi_range(1, 50)
	velocy += randi_range(10, 100)
	estimativa +=1
	if estimativa > 4:
		get_node("Pokemon1").visible = false
		get_node("Pokemon2").visible = true
	
