extends Area2D

@onready var timer = $"../../Timer"

func _on_body_entered(body):
	if body.name == "MainCharacter":
		timer.set_process(false)
		print(timer.time)
		print('level complete')
		if LevelInfo.Metadata[LevelInfo.CurrentLevel]['high score'] > timer.time:
			LevelInfo.Metadata[LevelInfo.CurrentLevel]['high score'] = timer.time
			print('new high score')
