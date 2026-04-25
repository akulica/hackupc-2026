extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	position=Vector2(960,540)


# Called every frame. 'delta' is the elapsed time since the previous frame.qwqq
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("notew"):
		var node = preload("res://note.tscn").instantiate()
		node.dir = Vector2(sin(PI),cos(PI))
		add_child(node)
	if Input.is_action_just_pressed("noteq"):
		var node = preload("res://note.tscn").instantiate()
		node.dir = Vector2(sin(-PI*3/5),cos(-PI*3/5))
		add_child(node)
		
	if Input.is_action_just_pressed("notee"):
		var node = preload("res://note.tscn").instantiate()
		node.dir = Vector2(sin(PI*3/5),cos(PI*3/5))
		add_child(node)
	
	if Input.is_action_just_pressed("noted"):
		var node = preload("res://note.tscn").instantiate()
		node.dir = Vector2(sin(PI*1/5),cos(PI*1/5))
		add_child(node)
	
	if Input.is_action_just_pressed("notea"):
		var node = preload("res://note.tscn").instantiate()
		node.dir = Vector2(sin(-PI*1/5),cos(-PI*1/5))
		add_child(node)
