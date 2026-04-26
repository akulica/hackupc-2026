extends CharacterBody2D
var minigame_dialog=false
var dialog=false
var overit=false
const SPEED = 300.0
const JUMP_VELOCITY = -400.0
@onready var anim=$AnimatedSprite2D
func _physics_process(delta: float) -> void:
	# Add the gravity.
	
	
	if Input.is_action_just_pressed("interact"):
		if minigame_dialog==true:
			get_tree().change_scene_to_file("res://note_spawner.tscn")
		if dialog==true:
			get_tree().change_scene_to_file("res://dialog.tscn")
		
	# Handle jump.
	if Input.is_action_pressed("left"):
		anim.flip_h=false
		anim.play("run")
		
	if Input.is_action_pressed("right"):
		anim.flip_h=true
		anim.play("run")
		
	if Input.is_action_just_pressed("attack"):
		var node = preload("res://hitbox.tscn").instantiate()
		if anim.flip_h==true:
			node.position=Vector2(150+node.position.x,position.y)
		if anim.flip_h==false:
			node.position=Vector2(-150+node.position.x,position.y)
		add_child(node)
	if Input.is_action_pressed("attack"):
		anim.play("attack")
	elif velocity==Vector2.ZERO:
		anim.play("stand")
		
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("left", "right")
	if direction:
		velocity.x = direction * SPEED
		true
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()


func _on_kys_area_entered(area: Area2D) -> void:
	get_tree().change_scene_to_file("res://gameover.tscn")
	
	pass # Replace with function body.



func _on_npc_body_entered(body: Node2D) -> void:
	dialog=true

func _on_npc_body_exited(body: Node2D) -> void:
	dialog=false
	


func _on_well_body_entered(body: Node2D) -> void:
	minigame_dialog=true

func _on_well_body_exited(body: Node2D) -> void:
	minigame_dialog=false


func _on_area_2d_body_entered(body: Node2D) -> void:
	get_tree().change_scene_to_file("res://second.tscn")


func _on_area_2d_2_body_entered(body: Node2D) -> void:
	get_tree().change_scene_to_file("res://gameover.tscn")
