extends TextureButton


func _on_pressed():
	print(get_tree().get_current_scene().get_name())
	if get_tree().get_current_scene().get_name() == 'LevelSelect':
		get_tree().change_scene_to_file("res://Scenes/Menus/MainMenu.tscn")
	else:
		get_tree().change_scene_to_file("res://Scenes/Menus/LevelSelect.tscn")

