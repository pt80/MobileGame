extends Node2D

const UI = preload("res://Resources/UITheme.tres")
@onready var volume_slider = $VBoxContainer/VBoxContainer/HBoxContainer/VolumeSlider

func _ready():
	AudioManager.PlayMusic(load("res://Audio/Music/igsong.wav"))


func _on_sound_pressed():
	print(UI.get_stylebox('panel', 'PanelContainer').texture_margin_top)
	var StretchTween = create_tween()
	if UI.get_stylebox('panel', 'PanelContainer').texture_margin_top == 0:
		volume_slider.visible = false
		StretchTween.tween_property(UI.get_stylebox('panel', 'PanelContainer'),"texture_margin_top", 4,1.5)
	else:
		StretchTween.tween_property(UI.get_stylebox('panel', 'PanelContainer'),"texture_margin_top", 0,1.5)
		await StretchTween.finished
		volume_slider.visible = true
