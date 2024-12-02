extends CharacterBody2D

const SPEED = 300.0

func _physics_process(_delta):
	var VerticalDirection = Input.get_axis("up", "down")
	if VerticalDirection:
		velocity.y = VerticalDirection * SPEED
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)

	var HorizontalDirection = Input.get_axis("left", "right")
	if HorizontalDirection:
		velocity.x = HorizontalDirection * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()

func Death():
	print('our hero is dead')
