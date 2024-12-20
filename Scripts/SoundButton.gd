extends TextureButton

const UI = preload("res://Resources/UITheme.tres")
@onready var volume_container = $"../VolumeContainer"


func _on_pressed():
	#print(UI.get_stylebox('panel', 'PanelContainer').texture_margin_top)
	#var StretchTween = create_tween()
	#if UI.get_stylebox('panel', 'PanelContainer').texture_margin_top == 0:
		#volume_slider.visible = false
		#StretchTween.tween_property(UI.get_stylebox('panel', 'PanelContainer'),"texture_margin_top", 4,1.5)
	#else:
		#StretchTween.tween_property(UI.get_stylebox('panel', 'PanelContainer'),"texture_margin_top", 0,1.5)
		#await StretchTween.finished
		#volume_slider.visible = true
#
	#volume_slider.visible = !volume_slider.visible
	AudioServer.set_bus_mute(0,!AudioServer.is_bus_mute(0))
	SetAudioVisuls()
	
func SetAudioVisuls():
	if AudioServer.is_bus_mute(0):
		volume_container.Mute()
		texture_normal = load("res://Images/MusicNoteMuted.png")
	elif !AudioServer.is_bus_mute(0):
		var deci = snappedf(db_to_linear(AudioServer.get_bus_volume_db(0)), 0.1) * float(volume_container.volumeBars.size()) - 1
		volume_container.ChangeVolume(deci)
		texture_normal = load("res://Images/MusicNote.png")

