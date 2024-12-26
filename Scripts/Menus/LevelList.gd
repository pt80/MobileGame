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
