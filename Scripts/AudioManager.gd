extends AudioStreamPlayer

var LevelMusic = preload("res://Audio/frogs.wav")
@onready var BackgroundMusic = $Music

func PlayMusic(Music:AudioStream):
	if BackgroundMusic.stream != Music:
		BackgroundMusic.stream = Music
		BackgroundMusic.play()
		
func PlayLevelMusic():
	PlayMusic(LevelMusic)
