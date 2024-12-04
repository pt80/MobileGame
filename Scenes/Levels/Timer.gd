extends HBoxContainer

@onready var minutesLabel = $Minutes
@onready var secondsLabel = $Seconds
@onready var milisecondsLabel = $Miliseconds

var time: float = 0.0
var minutes = 0
var seconds = 0
var milliseconds = 0

func _process(delta):
	time += delta
	
	minutes = fmod(time,3600) /60
	seconds = fmod(time, 60)
	milliseconds = fmod(time,1) * 100
	
	minutesLabel.text = "%02d" % minutes
	secondsLabel.text = "%02d" % seconds
	milisecondsLabel.text = "%02d" % milliseconds
	
	print(time)
