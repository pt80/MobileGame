extends Label


func _ready():
	if GameManager.ChallengeMode:
		text = 'PB: ' + str(SaveManager.SaveFile.ChallengeModeHighScore)
	elif !GameManager.ChallengeMode:
		if SaveManager.SaveFile.Metadata[GameManager.CurrentLevel]['high score'] == 9999:
			text = 'PB: --:--:--' 
		else:
			text = 'PB: ' + GameManager.FormatTime(SaveManager.SaveFile.Metadata[GameManager.CurrentLevel]['high score'])
