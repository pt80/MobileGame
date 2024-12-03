extends Control

var LevelIndex = 0
var LevelList: Array = []

func _ready():
	GetLevels("res://Scenes/Levels/")

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
	
func _process(_delta):
	pass

func _on_button_pressed():
	get_tree().change_scene_to_file("res://Scenes/Levels/" + LevelList[LevelIndex])

func _on_previous_button_pressed():
	LevelIndex -= 1
	if LevelIndex < 0:
		LevelIndex = LevelList.size() - 1
	print('show previous level', LevelIndex)

func _on_next_button_pressed():
	LevelIndex += 1
	if LevelIndex > LevelList.size() - 1: 
		LevelIndex = 0
	print('show next level', LevelIndex)
