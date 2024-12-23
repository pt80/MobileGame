extends Node2D

const holeFile = preload("res://Scenes/Characters/Hole.tscn")
@onready var Tilemap = $PanelContainer/TileMap

func _ready():
	AudioManager.PlayMusic(load("res://Audio/Music/igsong.wav"))
	if GameManager.ChallengeMode:
		SetHoles()
	
func SetHoles():
	var HoleLocations = SaveManager.SaveFile.Metadata[GameManager.CurrentLevel]['holes']

	for i in HoleLocations:
		var hole = holeFile.instantiate()
		Tilemap.add_child(hole)
		hole.position = Tilemap.map_to_local(i)
