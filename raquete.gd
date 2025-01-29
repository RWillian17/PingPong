extends Node2D

class_name RAQUETE

var ponto: int = 0
var speedx: int = 300

signal acertou

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_pressed("dire"):
		position.x = position.x + speedx * delta
	elif Input.is_action_pressed("esq"):
		position.x = position.x - speedx * delta
	
	if position.x <= 100:
		position.x = 100
	elif position.x >= 1050:
		position.x = 1050
	#print("raquete esta em: ", position, "posicao")

func retornaPonto () -> int:
	return ponto

func resetPonto () -> void:
	ponto = 0


func acertaramRaquete(area: Area2D) -> void:
	ponto = ponto + 1
	print("pontuacao vale ",ponto)
	acertou.emit()
