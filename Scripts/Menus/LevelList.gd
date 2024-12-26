extends PanelContainer

var File 
@onready var Level1Name = $VBoxContainer/Level1/VBoxContainer/Label
@onready var Level1Score = $VBoxContainer/Level1/VBoxContainer/Label2

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
		GameManager.CurrentLevel += 1
	GameManager.CurrentLevel = 0

func _on_texture_rect_mouse_entered():
	print('im inside')

func _on_level_1_play_button_pressed():
	GameManager.CurrentLevel = 0
	get_tree().change_scene_to_file("res://Scenes/Levels/Finals/NeilLevel2.tscn")

func _on_level_2_play_button_pressed():
	GameManager.CurrentLevel = 1
	get_tree().change_scene_to_file("res://Scenes/Levels/Finals/NeilLevel6.tscn")

func _on_level_3_play_button_pressed():
	GameManager.CurrentLevel = 2
	get_tree().change_scene_to_file("res://Scenes/Levels/Finals/NeilLevel7.tscn")

func _on_level_4_play_button_pressed():
	GameManager.CurrentLevel = 3
	get_tree().change_scene_to_file("res://Scenes/Levels/Finals/NeilLevel8.tscn")

func _on_level_5_play_button_pressed():
	GameManager.CurrentLevel = 4
	print('wooah that was a LEVEL')
