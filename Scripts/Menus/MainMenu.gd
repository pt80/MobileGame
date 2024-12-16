extends Control


func _ready():
		AudioManager.PlayMusic(load("res://Audio/frogs.wav"))

func _on_level_select_button_pressed():
	get_tree().change_scene_to_file("res://Scenes/Menus/LevelSelect.tscn")

func _on_challenge_button_pressed():
	print('begin challenge mode from level 1')


func _on_settings_button_pressed():
	print('llok at the optrions')
