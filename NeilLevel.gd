extends Node2D

@onready var LevelName = $Overlay/VBoxContainer/LevelNameText

func _ready():
	AudioManager.PlayMusic(load("res://Audio/Music/igsong.wav"))
