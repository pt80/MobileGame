extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _on_body_entered(body):
	print(body.position, body.global_position)
	if body.name == "MainCharacter":
		body.position += Vector2(-24,0)

#
#func _on_area_entered(area):
	#area.position += Vector2(-24,0)
	#print(area)
