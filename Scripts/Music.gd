extends AudioStreamPlayer

var LevelMusic = preload("res://Audio/frogs.wav")

func PlayMusic(Music:AudioStream):
	stream = Music
	play()
	
func PlayLevelMusic():
	PlayMusic(LevelMusic)
