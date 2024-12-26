extends Area2D

func _on_body_entered(body):
	if body.name == "MainCharacter":
		if GameManager.CurrentLevel == 0:
			body.Death()
		else:
			GameManager.CurrentScore -= 1
			GameManager.CurrentLevel -= 1
			get_tree().change_scene_to_file(SaveManager.SaveFile.Metadata[GameManager.CurrentLevel]['scene'])

		
	
