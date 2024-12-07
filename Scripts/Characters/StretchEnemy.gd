extends CharacterBody2D

@export var Rate: int = 1

@onready var timer = $Timer
var actionable = true

func _ready():
	Stretch()

func _on_area_2d_body_entered(body):
	if body.name == "MainCharacter":
		body.Death()


func _on_timer_timeout():
	Stretch()

func Stretch():
	var StretchTween = create_tween()
	StretchTween.tween_property(self,"scale", Vector2(1,4),Rate)
	StretchTween.tween_property(self,"scale", Vector2(1,1),Rate)
	StretchTween.tween_property(self,"scale", Vector2(4,1),Rate)
	StretchTween.tween_property(self,"scale", Vector2(1,1),Rate)
