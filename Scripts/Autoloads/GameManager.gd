extends Node

var CurrentLevel = 0
var ChallengeMode = false
var CurrentScore = 0
var HighScore = 0

func _ready():
	pass # Replace with function body.

func FormatTime(time):
	var minutes = fmod(time,3600) /60
	var seconds = fmod(time, 60)
	var milliseconds = fmod(time,1) * 100
	
	return "%02d:%02d:%02d" % [minutes, seconds, milliseconds]

func PlayNextChallengeLevel():
	CurrentLevel += 1
	CurrentScore += 1
	if CurrentLevel > SaveManager.SaveFile.Metadata.size() - 1: 
		CurrentLevel = 0
	get_tree().change_scene_to_file(SaveManager.SaveFile.Metadata[CurrentLevel]['scene'])
