extends Resource
class_name LevelData

@export var CurrentLevel = 0
@export var ChallengeModeHighScore = 0

@export var Metadata = [
	{
		'name': "Maze",
		'scene': "res://Scenes/Levels/Finals/Maze.tscn",
		'image': "res://Images/LevelImage.png",
		'holes': [Vector2i(1,27), Vector2i(10,23), Vector2i(3,23), Vector2i(16,13), Vector2i(12,13), Vector2i(2,2), Vector2i(14,6), Vector2i(8,7), Vector2i(19,13), Vector2i(21,8)],
		'high score': 9999,
		'unlocked': true
	},
	{
		'name': "Vortex",
		'scene': "res://Scenes/Levels/Finals/Vortex.tscn",
		'image': "res://Images/MainMenuBackground.png",
		'holes': [Vector2i(10,26),Vector2i(12,21),Vector2i(21,16),Vector2i(4,10),Vector2i(2,2),Vector2i(18,5)],
		'high score': 9999,
		'unlocked': true
	},
	{
		'name': "Boxes",
		'scene': "res://Scenes/Levels/Finals/Boxes.tscn",
		'image': "res://Images/MainMenuBackground.png",
		'holes': [Vector2i(2,27),Vector2i(6,23),Vector2i(20,12),Vector2i(18,29),Vector2i(8,1),Vector2i(4,13)],
		'high score': 9999,
		'unlocked': true
	},
	{
		'name': "Alleys",
		'scene': "res://Scenes/Levels/Finals/Alleys.tscn",
		'image': "res://Images/MainMenuBackground.png",
		'holes': [Vector2i(4,18),Vector2i(17,24),Vector2i(10,22),Vector2i(12,22),Vector2i(17,17),Vector2i(5,9),Vector2i(15,8),Vector2i(14,4),Vector2i(21,5)],
		'high score': 9999,
		'unlocked': true
	},
	{
		'name': "Jumper",
		'scene': "res://Scenes/Levels/Finals/Cage.tscn",
		'image': "res://Images/MainMenuBackground.png",
		'holes': [Vector2i(21,30),Vector2i(15,4),Vector2i(16,8),Vector2i(13,27),Vector2i(21,30)],
		'high score': 9999,
		'unlocked': true
	}
]
