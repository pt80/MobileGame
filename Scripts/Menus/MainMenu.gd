extends Control


func _ready():
	AudioManager.PlayMusic(load("res://Audio/Music/MenuSongTest.wav"))
	ChallengeUnlock()

func _on_level_select_button_pressed():
	get_tree().change_scene_to_file("res://Scenes/Menus/LevelSelect.tscn")

func _on_challenge_button_pressed():
	GameManager.ChallengeMode = true
	get_tree().change_scene_to_file(SaveManager.SaveFile.Metadata[0]['scene'])

func _on_settings_button_pressed():
	print('llok at the optrions')

func ChallengeUnlock():
	if SaveManager.SaveFile.Metadata[-1]['unlocked']:
		$VBoxContainer/ChallengeButton.disabled = false
	else:
		$VBoxContainer/ChallengeButton.disabled = true
