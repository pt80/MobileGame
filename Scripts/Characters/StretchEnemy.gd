extends CharacterBody2D

@export var Rate: float = 1.0
@export var Length: int = 4
@export var StretchHorizontal: bool = true
@export var StretchVertical: bool = true
@export var Alerted: bool = false

@onready var timer = $Timer

func _ready():
	if Alerted:
		SetTimer()
		Stretch()

func _on_area_2d_body_entered(body):
	if body.name == "MainCharacter":
		body.Death()

func _on_timer_timeout():
	Stretch()

func Stretch():
	var StretchTween = create_tween()
	if Alerted:
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


func _on_alert_radius_body_entered(body):
	if body is CharacterBody2D and !Alerted:
		Alerted = true
		SetTimer()
		Stretch()


func _on_alert_radius_area_entered(area):
	if !Alerted:
		Alerted = true
		SetTimer()
		Stretch()
