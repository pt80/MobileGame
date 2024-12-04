extends CharacterBody2D

const Speed = 200
var Direction = 1
@onready var ray_cast_right = $RayCastRight
@onready var ray_cast_left = $RayCastLeft

func _physics_process(delta):
	if ray_cast_left.is_colliding() or ray_cast_right.is_colliding():
		Direction *= -1
	velocity.x =  Direction * Speed
	move_and_slide()
	
func _on_body_entered(body):
	if body.name == "MainCharacter":
		body.Death()




