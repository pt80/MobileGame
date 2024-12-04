extends CharacterBody2D

const Speed = 200
var Direction = 1

func _physics_process(_delta):
	velocity.x =  Direction * Speed
	move_and_slide()

func _on_area_2d_body_entered(body):
	if body.name == "MainCharacter":
		body.Death()
	else:
		Direction *= -1
