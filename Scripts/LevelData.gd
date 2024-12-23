extends Resource
class_name LevelData

@export var CurrentLevel = 0
@export var ChallengeModeHighScore = 0

@export var Metadata = [
	{
		'name': "Maze",
		'scene': "res://Scenes/Levels/Finals/NeilLevel2.tscn",
		'image': "res://Images/LevelImage.png",
		'holes': [],
		'high score': 9999,
		'unlocked': true
	},
	{
		'name': "Boxes",
		'scene': "res://Scenes/Levels/Finals/NeilLevel8.tscn",
		'image': "res://Images/MainMenuBackground.png",
		'holes': [Vector2i(0,0)],
		'high score': 9999,
		'unlocked': false
	},
	{
		'name': "Alleys",
		'scene': "res://Scenes/Levels/Finals/NeilLevel6.tscn",
		'image': "res://Images/MainMenuBackground.png",
		'holes': [Vector2i(0,0)],
		'high score': 9999,
		'unlocked': false
	},
	{
		'name': "Vortex",
		'scene': "res://Scenes/Levels/Finals/NeilLevel7.tscn",
		'image': "res://Images/MainMenuBackground.png",
		'holes': [Vector2i(0,0)],
		'high score': 9999,
		'unlocked': false
	},
	{
		'name': "Jumper",
		'scene': "res://Scenes/Levels/NeilLevel4.tscn",
		'image': "res://Images/MainMenuBackground.png",
		'holes': [Vector2i(0,0)],
		'high score': 9999,
		'unlocked': false
	}
]
