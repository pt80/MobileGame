extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	GetLevels("res://Scenes/Levels/")

func GetLevels(path):
	var dir = DirAccess.open(path)
	if dir:
		dir.list_dir_begin()
		var file_name = dir.get_next()
		while file_name != "":
			print("Found file: " + file_name)
			file_name = dir.get_next()
	else:
		print("An error occurred when trying to access the path.")

func _process(_delta):
	pass

func _on_button_pressed():
	get_tree().change_scene_to_file("res://Scenes/Levels/DakotaLevel.tscn")

func _on_previous_button_pressed():
	pass # Replace with function body.

func _on_next_button_pressed():
	pass # Replace with function body.
