extends Node

var SaveFilePath = 'user://save/'
var SaveFileName = 'LevelSave.tres'

var SaveFile = LevelData.new()

func _ready():
	VerifySaveDirectory(SaveFilePath)
	Load()

func VerifySaveDirectory(path):
	DirAccess.make_dir_absolute(path)

func Save():
	ResourceSaver.save(SaveFile, SaveFilePath + SaveFileName)

func Load():
	if FileAccess.file_exists(SaveFilePath + SaveFileName):
		SaveFile = ResourceLoader.load(SaveFilePath + SaveFileName).duplicate(true)
	else:
		Save()
