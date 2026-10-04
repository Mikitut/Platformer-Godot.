extends CharacterBody2D

const SPEED = 250.0
const JUMP_VELOCITY = -420.0
const GRAVITY = 1200.0

func _physics_process(delta):
	if not is_on_floor():
		velocity.y += GRAVITY * delta

	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	var dir = Input.get_axis("move_left", "move_right")
	velocity.x = dir * SPEED

	move_and_slide()

	for i in get_slide_collision_count():
		pass  
