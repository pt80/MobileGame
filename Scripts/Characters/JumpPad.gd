extends Area2D

@export_range(-1, 1, 1) var Direction: float


func _on_body_entered(body):
	print(body.position, body.global_position)
	if body.name == "MainCharacter":
		body.position += Vector2(Direction * 36,0)

#
#func _on_area_entered(area):
	#area.position += Vector2(-24,0)
	#print(area)
