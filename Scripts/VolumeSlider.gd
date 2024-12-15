extends HSlider


func _on_drag_ended(_value_changed):
	AudioServer.set_bus_volume_db(0,linear_to_db(value))
