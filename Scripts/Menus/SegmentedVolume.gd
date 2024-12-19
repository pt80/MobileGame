extends HBoxContainer

var volumeBars 

func _ready():
	volumeBars = get_tree().get_nodes_in_group('VolumeBar')
	print(volumeBars)
	for i in volumeBars:
		print(volumeBars.find(i))

func ChangeVolumeImage(vol):
	AudioServer.set_bus_volume_db(0,linear_to_db(vol/volumeBars.size()))

	for i in volumeBars:
		if volumeBars.find(i) > vol:
			print(i.self_modulate)
			i.self_modulate = Color(.75,.75,.75,1)
		elif volumeBars.find(i) <= vol:
			i.self_modulate = Color(0,0,.498,1)

func _on_volume_1_pressed():
	ChangeVolumeImage(0)

func _on_volume_2_pressed():
	ChangeVolumeImage(1)

func _on_volume_3_pressed():
	ChangeVolumeImage(2)

func _on_volume_4_pressed():
	ChangeVolumeImage(3)

func _on_volume_5_pressed():
	ChangeVolumeImage(4)
