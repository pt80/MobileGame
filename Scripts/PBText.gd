extends Label


func _ready():
	if GameManager.ChallengeMode:
		text = 'PB: ' + str(SaveManager.SaveFile.ChallengeModeHighScore)
	elif !GameManager.ChallengeMode:
		text = 'PB: ' + GameManager.FormatTime(SaveManager.SaveFile.Metadata[GameManager.CurrentLevel]['high score'])
