extends PanelContainer

var File 

func _ready():
	File = SaveManager.SaveFile
	GameManager.CurrentLevel = 0
	
	var Levels = get_tree().get_nodes_in_group('Levels')
	for i in Levels:
		
		i.get_child(0).get_child(1).get_child(0).text = File.Metadata[GameManager.CurrentLevel]['name']
		
		if File.Metadata[GameManager.CurrentLevel]['high score'] == 9999:
			i.get_child(0).get_child(1).get_child(1).text = '--:--:--'
		else:
			i.get_child(0).get_child(1).get_child(1).text = GameManager.FormatTime(File.Metadata[GameManager.CurrentLevel]['high score'])
		
		if File.Metadata[GameManager.CurrentLevel]['unlocked'] == true:
			i.get_child(0).get_child(0).get_child(0).visible = false
		
		GameManager.CurrentLevel += 1
	GameManager.CurrentLevel = 0

func _on_level_1_play_button_pressed():
	GameManager.CurrentLevel = 0
	if File.Metadata[GameManager.CurrentLevel]['unlocked']:
		get_tree().change_scene_to_file("res://Scenes/Levels/Finals/Maze.tscn")

func _on_level_2_play_button_pressed():
	GameManager.CurrentLevel = 1
	if File.Metadata[GameManager.CurrentLevel]['unlocked']:
		get_tree().change_scene_to_file("res://Scenes/Levels/Finals/Vortex.tscn")

func _on_level_3_play_button_pressed():
	GameManager.CurrentLevel = 2
	if File.Metadata[GameManager.CurrentLevel]['unlocked']:
		get_tree().change_scene_to_file("res://Scenes/Levels/Finals/Boxes.tscn")

func _on_level_4_play_button_pressed():
	GameManager.CurrentLevel = 3
	if File.Metadata[GameManager.CurrentLevel]['unlocked']:
		get_tree().change_scene_to_file("res://Scenes/Levels/Finals/Alleys.tscn")

func _on_level_5_play_button_pressed():
	GameManager.CurrentLevel = 4
	if File.Metadata[GameManager.CurrentLevel]['unlocked']:
		print('wooah that was a LEVEL')

func _on_level_1_mouse_entered():
	$VBoxContainer/Level1.theme.get_stylebox('panel', 'PanelContainer').bg_color = Color(0,0,.5,1)
	$VBoxContainer/Level1/HBoxContainer/VBoxContainer/Label.set("theme_override_colors/font_color",Color(1,1,1,1))
	$VBoxContainer/Level1/HBoxContainer/VBoxContainer/Label2.set("theme_override_colors/font_color",Color(1,1,1,1))

func _on_level_1_mouse_exited():
	$VBoxContainer/Level1.theme.get_stylebox('panel', 'PanelContainer').bg_color = Color(0,0,.5,0)
	$VBoxContainer/Level1/HBoxContainer/VBoxContainer/Label.set("theme_override_colors/font_color",Color(0,0,0,1))
	$VBoxContainer/Level1/HBoxContainer/VBoxContainer/Label2.set("theme_override_colors/font_color",Color(0,0,0,1))

func _on_level_2_mouse_entered():
	$VBoxContainer/Level2.theme.get_stylebox('panel', 'PanelContainer').bg_color = Color(0,0,.5,1)
	$VBoxContainer/Level2/HBoxContainer/VBoxContainer/Label.set("theme_override_colors/font_color",Color(1,1,1,1))
	$VBoxContainer/Level2/HBoxContainer/VBoxContainer/Label2.set("theme_override_colors/font_color",Color(1,1,1,1))

func _on_level_2_mouse_exited():
	$VBoxContainer/Level2.theme.get_stylebox('panel', 'PanelContainer').bg_color = Color(0,0,.5,0)
	$VBoxContainer/Level2/HBoxContainer/VBoxContainer/Label.set("theme_override_colors/font_color",Color(0,0,0,1))
	$VBoxContainer/Level2/HBoxContainer/VBoxContainer/Label2.set("theme_override_colors/font_color",Color(0,0,0,1))

func _on_level_3_mouse_entered():
	$VBoxContainer/Level3.theme.get_stylebox('panel', 'PanelContainer').bg_color = Color(0,0,.5,1)
	$VBoxContainer/Level3/HBoxContainer/VBoxContainer/Label.set("theme_override_colors/font_color",Color(1,1,1,1))
	$VBoxContainer/Level3/HBoxContainer/VBoxContainer/Label2.set("theme_override_colors/font_color",Color(1,1,1,1))

func _on_level_3_mouse_exited():
	$VBoxContainer/Level3.theme.get_stylebox('panel', 'PanelContainer').bg_color = Color(0,0,.5,0)
	$VBoxContainer/Level3/HBoxContainer/VBoxContainer/Label.set("theme_override_colors/font_color",Color(0,0,0,1))
	$VBoxContainer/Level3/HBoxContainer/VBoxContainer/Label2.set("theme_override_colors/font_color",Color(0,0,0,1))

func _on_level_4_mouse_entered():
	$VBoxContainer/Level4.theme.get_stylebox('panel', 'PanelContainer').bg_color = Color(0,0,.5,1)
	$VBoxContainer/Level4/HBoxContainer/VBoxContainer/Label.set("theme_override_colors/font_color",Color(1,1,1,1))
	$VBoxContainer/Level4/HBoxContainer/VBoxContainer/Label2.set("theme_override_colors/font_color",Color(1,1,1,1))

func _on_level_4_mouse_exited():
	$VBoxContainer/Level4.theme.get_stylebox('panel', 'PanelContainer').bg_color = Color(0,0,.5,0)
	$VBoxContainer/Level4/HBoxContainer/VBoxContainer/Label.set("theme_override_colors/font_color",Color(0,0,0,1))
	$VBoxContainer/Level4/HBoxContainer/VBoxContainer/Label2.set("theme_override_colors/font_color",Color(0,0,0,1))

func _on_level_5_mouse_entered():
	$VBoxContainer/Level5.theme.get_stylebox('panel', 'PanelContainer').bg_color = Color(0,0,.5,1)
	$VBoxContainer/Level5/HBoxContainer/VBoxContainer/Label.set("theme_override_colors/font_color",Color(1,1,1,1))
	$VBoxContainer/Level5/HBoxContainer/VBoxContainer/Label2.set("theme_override_colors/font_color",Color(1,1,1,1))
	
func _on_level_5_mouse_exited():
	$VBoxContainer/Level5.theme.get_stylebox('panel', 'PanelContainer').bg_color = Color(0,0,.5,0)
	$VBoxContainer/Level5/HBoxContainer/VBoxContainer/Label.set("theme_override_colors/font_color",Color(0,0,0,1))
	$VBoxContainer/Level5/HBoxContainer/VBoxContainer/Label2.set("theme_override_colors/font_color",Color(0,0,0,1))
