extends HSlider


func _on_drag_ended(value_changed):
	AudioServer.set_bus_volume_db(0,linear_to_db(value))
