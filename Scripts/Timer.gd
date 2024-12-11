extends Label

var time: float = 0.0
var minutes = 0
var seconds = 0
var milliseconds = 0

func _process(delta):
	time += delta
	text = GameManager.FormatTime(time)
