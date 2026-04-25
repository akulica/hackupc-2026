extends Node2D
var array = [1,2,4,0,1,2,3,4,1,3,2,4,1,2,3,2,2,3,4]
var notenum = 0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	position=Vector2(960,540)
signal note0
signal note1
signal note2
signal note3
signal note4

# Called every frame. 'delta' is the elapsed time since the previous frame.qwqq
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("notew"):
		instantiate_note(0)
	if Input.is_action_just_pressed("notee"):
		instantiate_note(1)
	if Input.is_action_just_pressed("noted"):
		instantiate_note(2)
	if Input.is_action_just_pressed("notea"):
		instantiate_note(3)
	if Input.is_action_just_pressed("noteq"):
		instantiate_note(4)
	
func instantiate_note(button: int) -> void:
	var node = preload("res://note.tscn").instantiate()
	node.dir = -Vector2(sin(PI-(float(button)*2./5.*PI)),cos(((float(button)*2./5.*PI))))
	add_child(node)
	if button==0:
		emit_signal("note0")
	else: if button==1:
		emit_signal("note1")
	else: if button==2:
		emit_signal("note2")
	else: if button==3:
		emit_signal("note3")
	else: if button==4:
		emit_signal("note4")

func _on_timer_timeout() -> void:
	instantiate_note(array[notenum])
	if notenum<array.size()-1:
		notenum+=1
	else:
		notenum=0
