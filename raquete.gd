extends Node2D

var speedx: int = 200
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_pressed("dire"):
		position.x = position.x + speedx * delta
	elif Input.is_action_pressed("esq"):
		position.x = position.x - speedx * delta
		
	if position.x >= 1050:
		position.x = 1050
	elif position.x <= 80:
		position.x = 80
	print("raquete esta em: ", position)
