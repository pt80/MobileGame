extends Label


func _ready():
	text = 'PB: ' + GameManager.FormatTime(SaveManager.SaveFile.Metadata[GameManager.CurrentLevel]['high score'])
