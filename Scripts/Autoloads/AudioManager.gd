extends AudioStreamPlayer

func PlayMusic(Music:AudioStream):
	if $Music.stream != Music:
		$Music.stream = Music
		$Music.play()

func PlaySoundEffect(Effect:AudioStream):
	$SFX.stream = Effect
	$SFX.play()
