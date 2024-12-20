extends CharacterBody2D

const SPEED = 200.0
@onready var start_point = $"../StartPoint"

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
	AudioManager.PlaySoundEffect(load("res://Audio/SFX/snare.wav"))
	if GameManager.ChallengeMode:
		print('back to menu')
		get_tree().change_scene_to_file("res://Scenes/Menus/MainMenu.tscn")
		GameManager.CurrentLevel = 0
		GameManager.CurrentScore = 0
		GameManager.ChallengeMode = false
	elif !GameManager.ChallengeMode:
		global_position = start_point.global_position
	

