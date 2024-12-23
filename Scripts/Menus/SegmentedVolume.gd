extends PanelContainer

var volumeBars 
@onready var sound = $"../Sound"

func _ready():
	volumeBars = get_tree().get_nodes_in_group('VolumeBar')
	ChangeVolume(snappedf(db_to_linear(AudioServer.get_bus_volume_db(0)), 0.1) * float(volumeBars.size()) - 1)

func ChangeVolume(vol):
	AudioServer.set_bus_volume_db(0,linear_to_db(float(vol + 1)/float(volumeBars.size())))
	ChangeVolumeImage(vol)
	if AudioServer.is_bus_mute(0):
		Mute()
	
func ChangeVolumeImage(vol):
	for i in volumeBars:
		if volumeBars.find(i) > vol:
			i.self_modulate = Color(.85,.85,.85,1)
		elif volumeBars.find(i) <= vol:
			i.self_modulate = Color(0,0,.498,1)

func Mute():
	sound.texture_normal = load("res://Images/MusicNoteMuted.png")
	for i in volumeBars:
		i.self_modulate = Color(.85,.85,.85,1)

func _on_volume_1_pressed():
	ChangeVolume(0)

func _on_volume_2_pressed():
	ChangeVolume(1)

func _on_volume_3_pressed():
	ChangeVolume(2)

func _on_volume_4_pressed():
	ChangeVolume(3)

func _on_volume_5_pressed():
	ChangeVolume(4)
