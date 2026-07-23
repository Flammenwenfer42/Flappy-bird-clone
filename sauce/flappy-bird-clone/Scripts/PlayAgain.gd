extends Button


# Called when the node enters the scene tree for the first time.
func _pressed():
	Globe.score = 0
	get_tree().change_scene_to_file("res://Scenes/main.tscn")
