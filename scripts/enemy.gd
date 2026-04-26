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


func _on_area_2d_area_shape_entered(area_rid: RID, area: Area2D, area_shape_index: int, local_shape_index: int) -> void:
	self.queue_free()
	pass # Replace with function body.
