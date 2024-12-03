extends Control

@onready var level_image = $VBoxContainer/HBoxContainer2/LevelImage
@onready var level_name_label = $VBoxContainer/HBoxContainer/LevelNameLabel

var LevelIndex = 0
var LevelList: Array = []

func _ready():
	GetLevels("res://Scenes/Levels/")
	SetLevelInfo()

func GetLevels(path):
	var dir = DirAccess.open(path)
	if dir:
		dir.list_dir_begin()
		var file_name = dir.get_next()
		while file_name != "":
			print("Found file: " + file_name)
			LevelList.append(file_name)
			file_name = dir.get_next()
	else:
		print("An error occurred when trying to access the path.")
	print(LevelList)

func _on_button_pressed():
	get_tree().change_scene_to_file("res://Scenes/Levels/" + LevelList[LevelIndex])

func _on_previous_button_pressed():
	LevelIndex -= 1
	if LevelIndex < 0:
		LevelIndex = LevelList.size() - 1
	SetLevelInfo()
	
func _on_next_button_pressed():
	LevelIndex += 1
	if LevelIndex > LevelList.size() - 1: 
		LevelIndex = 0
	SetLevelInfo()

func SetLevelInfo():
	var LevelName =LevelList[LevelIndex].left(LevelList[LevelIndex].length() - 5)
	level_image.texture = load(LevelInfo.Metadata[LevelName]['image'])
	level_name_label.text = LevelName

