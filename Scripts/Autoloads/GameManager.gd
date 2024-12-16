extends Node

var CurrentLevel = 0
var ChallengeMode = false
var Score = 0

func _ready():
	pass # Replace with function body.

func FormatTime(time):
	var minutes = fmod(time,3600) /60
	var seconds = fmod(time, 60)
	var milliseconds = fmod(time,1) * 100
	
	return "%02d:%02d:%02d" % [minutes, seconds, milliseconds]
