extends Button


# Called when the node enters the scene tree for the first time.
func _pressed():
	Globe.save_if_new_highscore()
	get_tree().quit()
