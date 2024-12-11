extends Label


func _ready():
	text = GameManager.FormatTime(SaveManager.SaveFile.Metadata[GameManager.CurrentLevel]['high score'])
