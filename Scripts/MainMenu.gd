extends Control

@onready var level_image = $VBoxContainer/HBoxContainer2/LevelImage
@onready var level_name_label = $VBoxContainer/HBoxContainer/LevelNameLabel
@onready var unlock_image = $VBoxContainer/HBoxContainer2/LevelImage/UnlockImage

func _ready():
	AudioManager.PlayMusic(load("res://Audio/frogs.wav"))
	SetLevelInfo()
	
func _on_button_pressed():
	if SaveManager.SaveFile.Metadata[SaveManager.SaveFile.CurrentLevel]['unlocked']:
		get_tree().change_scene_to_file(SaveManager.SaveFile.Metadata[SaveManager.SaveFile.CurrentLevel]['scene'])
		AudioManager.PlayMusic(load("res://Audio/Music/igsong.wav"))
	else:
		print('level is not unlocked')

func _on_previous_button_pressed():
	SaveManager.SaveFile.CurrentLevel -= 1
	if SaveManager.SaveFile.CurrentLevel < 0:
		SaveManager.SaveFile.CurrentLevel = SaveManager.SaveFile.Metadata.size() - 1
	SetLevelInfo()
	
func _on_next_button_pressed():
	SaveManager.SaveFile.CurrentLevel += 1
	if SaveManager.SaveFile.CurrentLevel > SaveManager.SaveFile.Metadata.size() - 1: 
		SaveManager.SaveFile.CurrentLevel = 0
	SetLevelInfo()

func SetLevelInfo():
	level_image.texture = load(SaveManager.SaveFile.Metadata[SaveManager.SaveFile.CurrentLevel]['image'])
	if SaveManager.SaveFile.Metadata[SaveManager.SaveFile.CurrentLevel]['unlocked'] == false:
		level_image.self_modulate = Color(0.5, 0.5, 0.5, 1)
		unlock_image.visible = true
	elif SaveManager.SaveFile.Metadata[SaveManager.SaveFile.CurrentLevel]['unlocked'] == true:
		level_image.self_modulate = Color(1,1,1,1)
		unlock_image.visible = false
	
	level_name_label.text = SaveManager.SaveFile.Metadata[SaveManager.SaveFile.CurrentLevel]['name']

