extends CharacterBody2D

@onready var sprite = $PuzzleJones
	
var speed = 300
func _physics_process(delta: float) -> void:
	# PLAYER MOVEMENT
	var input_vector = Vector2.ZERO
	
	if Input.is_action_pressed("move_left"):
		input_vector.x -= speed
		sprite.flip_h = true
		
	if Input.is_action_pressed("move_right"):
		input_vector.x += speed
		sprite.flip_h = false
		
	if Input.is_action_pressed("move_up"):
		input_vector.y -= speed
		
	if Input.is_action_pressed("move_down"):
		input_vector.y += speed
		
	input_vector = input_vector.normalized()
	
	self.velocity = input_vector * speed
	# COLLIDE
	move_and_slide()
	
