extends Area2D

@onready var timer = $"../../Timer"

func _on_body_entered(body):
	if body.name == "MainCharacter":
		timer.set_process(false)
		print(timer.time)
		print('level complete')
		UnlockNextLevel()
		if LevelInfo.Metadata[LevelInfo.CurrentLevel]['high score'] > timer.time:
			LevelInfo.Metadata[LevelInfo.CurrentLevel]['high score'] = timer.time
			print('new high score')

func UnlockNextLevel():
	if LevelInfo.CurrentLevel < LevelInfo.Metadata.size() - 1:
		LevelInfo.Metadata[LevelInfo.CurrentLevel + 1]['unlocked'] = true
