extends Area2D

func _on_body_entered(body):
	if body.name == "MainCharacter":
		print(body, 'go back to previous level')
		GameManager.CurrentScore -= 1
		GameManager.CurrentLevel -= 1
		get_tree().change_scene_to_file(SaveManager.SaveFile.Metadata[GameManager.CurrentLevel]['scene'])
