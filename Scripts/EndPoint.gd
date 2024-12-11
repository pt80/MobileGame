extends Area2D

@onready var timer = $"../../Timer"

func _on_body_entered(body):
	if body.name == "MainCharacter":
		timer.set_process(false)
		print(timer.time)
		print('level complete')
		UnlockNextLevel()
		if SaveManager.SaveFile.Metadata[SaveManager.SaveFile.CurrentLevel]['high score'] > timer.time:
			SaveManager.SaveFile.Metadata[SaveManager.SaveFile.CurrentLevel]['high score'] = timer.time
			print('new high score')
		get_tree().change_scene_to_file("res://Scenes/MainMenu.tscn")

func UnlockNextLevel():
	if SaveManager.SaveFile.CurrentLevel < SaveManager.SaveFile.Metadata.size() - 1:
		SaveManager.SaveFile.Metadata[SaveManager.SaveFile.CurrentLevel + 1]['unlocked'] = true
	SaveManager.Save()
