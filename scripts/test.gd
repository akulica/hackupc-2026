extends StaticBody2D
var state=-1
var dir=Vector2(0,0)
var movement_speed=600
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Sprite2D.scale=Vector2(0.03,0.03)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$Sprite2D.scale*=pow(1.06,delta*150)
func _on_timer_timeout() -> void:
	self.queue_free()
