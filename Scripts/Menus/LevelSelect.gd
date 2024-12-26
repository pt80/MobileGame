extends Control

@onready var level_image = $VBoxContainer/HBoxContainer2/LevelImage
@onready var level_name_label = $VBoxContainer/HBoxContainer/LevelNameLabel
@onready var unlock_image = $VBoxContainer/HBoxContainer2/LevelImage/UnlockImage
@onready var high_score_text = $VBoxContainer/HBoxContainer4/HighScoreText
@onready var overlay = $Overlay/VBoxContainer/TextureRect2/HBoxContainer

var File 

func _ready():
	print(overlay.get_children())
	File = SaveManager.SaveFile
	AudioManager.PlayMusic(load("res://Audio/Music/MenuSongTest.wav"))
	#SetLevelInfo()
	AdjustOverlay()
	#
#func _on_button_pressed():
	#if File.Metadata[GameManager.CurrentLevel]['unlocked']:
		#get_tree().change_scene_to_file(File.Metadata[GameManager.CurrentLevel]['scene'])
		#AudioManager.PlayMusic(load("res://Audio/Music/igsong.wav"))
	#else:
		#print('level is not unlocked')
#
#func _on_previous_button_pressed():
	#GameManager.CurrentLevel -= 1
	#if GameManager.CurrentLevel < 0:
		#GameManager.CurrentLevel = File.Metadata.size() - 1
	#SetLevelInfo()
	#
#func _on_next_button_pressed():
	#GameManager.CurrentLevel += 1
	#if GameManager.CurrentLevel > File.Metadata.size() - 1: 
		#GameManager.CurrentLevel = 0
	#SetLevelInfo()
#
#func SetLevelInfo():
	#level_image.texture = load(File.Metadata[GameManager.CurrentLevel]['image'])
	#high_score_text.text = GameManager.FormatTime(File.Metadata[GameManager.CurrentLevel]['high score'])
	#if File.Metadata[GameManager.CurrentLevel]['unlocked'] == false:
		#level_image.self_modulate = Color(0.5, 0.5, 0.5, 1)
		#unlock_image.visible = true
	#elif File.Metadata[GameManager.CurrentLevel]['unlocked'] == true:
		#level_image.self_modulate = Color(1,1,1,1)
		#unlock_image.visible = false
	#
	#level_name_label.text = File.Metadata[GameManager.CurrentLevel]['name']
#
func AdjustOverlay():
	overlay.get_child(1).visible = false
	overlay.get_child(2).visible = false
