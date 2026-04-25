extends StaticBody2D
var dir=Vector2(0,0)
var movement_speed=200
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position+=dir*movement_speed*delta


func _on_timer_timeout() -> void:
	self.queue_free()
