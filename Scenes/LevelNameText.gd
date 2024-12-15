extends Label

func _ready():
	text = get_tree().get_current_scene().get_name() + '.exe'
