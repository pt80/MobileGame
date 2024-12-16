extends Resource
class_name LevelData

@export var CurrentLevel = 0
@export var ChallengeModeHighScore = 0

@export var Metadata = [
	{
		'name': "DakotaLevel",
		'scene': "res://Scenes/Levels/DakotaLevel.tscn",
		'image': "res://Images/LevelImage.png",
		'high score': 9999,
		'unlocked': true
	},
	{
		'name': "NeilLevel",
		'scene': "res://Scenes/Levels/NeilLevel.tscn",
		'image': "res://Images/MainMenuBackground.png",
		'high score': 9999,
		'unlocked': false
	}
]
