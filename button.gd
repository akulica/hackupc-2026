extends Button


func _ready():
	var button = Button.new()
	button.text = "Click me"
	button.pressed.connect(_button_pressed)
	add_child(button)

func _button_pressed():
		get_tree().change_scene_to_file("res://start.tscn")
