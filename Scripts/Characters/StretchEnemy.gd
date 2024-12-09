extends CharacterBody2D

@export var Rate: float = 1.0
@export var Length: int = 4
@export var StretchHorizontal: bool = true
@export var StretchVertical: bool = true

@onready var timer = $Timer
var actionable = true

func _ready():
	SetTimer()
	Stretch()

func _on_area_2d_body_entered(body):
	if body.name == "MainCharacter":
		body.Death()

func _on_timer_timeout():
	Stretch()

func Stretch():
	var StretchTween = create_tween()
	if StretchVertical:
		StretchTween.tween_property(self,"scale", Vector2(1,Length),Rate)
		StretchTween.tween_property(self,"scale", Vector2(1,1),Rate)
	if StretchHorizontal:
		StretchTween.tween_property(self,"scale", Vector2(Length,1),Rate)
		StretchTween.tween_property(self,"scale", Vector2(1,1),Rate)

func SetTimer():
	var rotations = 0
	if StretchHorizontal:
		rotations += 2
	if StretchVertical:
		rotations += 2
	timer.wait_time = Rate * rotations
	timer.start()
