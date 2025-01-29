extends Node2D

@onready var placar: Label = $Placar

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func fezPonto() -> void:
	#print("estamos na funcao principal e teve ponto")
	var no: Node2D = get_node("Raquete")
	#placar.text = "Pontuação: " + str(no.retornaPonto())
	placar.text = "Pontuação: %04d" %no.retornaPonto()
	#print("na principal, ponto vale ", no.retornaPonto())
