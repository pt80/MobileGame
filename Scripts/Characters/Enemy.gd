extends CharacterBody2D

@export var Vertical: bool = false
@export var VelocityDirection: int = 1
@export var Speed: int = 200

func _physics_process(_delta):
	if Vertical:
		velocity.y =  VelocityDirection * Speed * GameManager.SpeedMult
	elif !Vertical:
		velocity.x =  VelocityDirection * Speed * GameManager.SpeedMult
	move_and_slide()

func _on_area_2d_body_entered(body):
	#$AudioStreamPlayer2D.stream = load("res://Audio/SFX/hit.wav")
	#$AudioStreamPlayer2D.play()
	VelocityDirection *= -1
	if body.name == "MainCharacter":
		body.Death()
	
