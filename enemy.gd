extends Node2D
@onready var hitbox=$"."
@onready var ani=$Area2D/AnimatedSprite2D
const vel=200
# Called when the node enters the scene tree for the first time.

func _ready() -> void:
	ani.play("walken")
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.x=position.x-vel*delta
