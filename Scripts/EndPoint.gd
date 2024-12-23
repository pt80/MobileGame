extends Area2D

@onready var timer = $"../../Overlay/VBoxContainer/HBoxContainer/Timer"

func _on_body_entered(body):
	if body.name == "MainCharacter":
		if !GameManager.ChallengeMode:
			timer.set_process(false)
			print(timer.time)
			print('level complete')
			UnlockNextLevel()
			if SaveManager.SaveFile.Metadata[GameManager.CurrentLevel]['high score'] > timer.time:
				SaveManager.SaveFile.Metadata[GameManager.CurrentLevel]['high score'] = timer.time
				print('new high score')
			SaveManager.Save()
			get_tree().change_scene_to_file("res://Scenes/Menus/LevelSelect.tscn")
		elif GameManager.ChallengeMode:
			print('keep going')
			GameManager.PlayNextChallengeLevel()
			if SaveManager.SaveFile.ChallengeModeHighScore < GameManager.CurrentScore:
				SaveManager.SaveFile.ChallengeModeHighScore = GameManager.CurrentScore

func UnlockNextLevel():
	if GameManager.CurrentLevel < SaveManager.SaveFile.Metadata.size() - 1:
		SaveManager.SaveFile.Metadata[GameManager.CurrentLevel + 1]['unlocked'] = true
	SaveManager.Save()
