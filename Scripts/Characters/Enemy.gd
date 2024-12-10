extends CharacterBody2D

@export var VelocityDirection: int = 1
@export var Speed: int = 200

func _physics_process(_delta):
	velocity.x =  VelocityDirection * Speed
	move_and_slide()

func _on_area_2d_body_entered(body):
	if body.name == "MainCharacter":
		body.Death()
	else:
		VelocityDirection *= -1
