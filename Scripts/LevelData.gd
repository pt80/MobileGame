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
	},
	{
		'name': "NeilLevel2",
		'scene': "res://Scenes/Levels/NeilLevel2.tscn",
		'image': "res://Images/MainMenuBackground.png",
		'high score': 9999,
		'unlocked': false
	},
	{
		'name': "NeilLevel3",
		'scene': "res://Scenes/Levels/NeilLevel3.tscn",
		'image': "res://Images/MainMenuBackground.png",
		'high score': 9999,
		'unlocked': false
	}
]
