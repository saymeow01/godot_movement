extends KinematicBody2D

export(float) var movement_speed = 200

func _physics_process(delta):
	var velocity = Vector2.ZERO
	if Input.is_action_pressed("ui_right"):
		velocity.x += 1.0
	if Input.is_action_pressed("ui_left"):
		velocity.x -= 1.0
	if Input.is_action_pressed("ui_up"):
		velocity.y -= 1.0
	if Input.is_action_pressed("ui_down"):
		velocity.y += 1.0
		
	velocity = velocity.normalized()
	
	move_and_slide(velocity * movement_speed)
	
