extends Node
const SAVE_FILE_PATH = "user://highscore.save"

var high_score = 0
var score = 0

func _ready() -> void:
	load_highscore()
	get_tree().set_auto_accept_quit(false)

func _notification(what: int) -> void:
	if what == NOTIFICATION_WM_CLOSE_REQUEST:
		save_if_new_highscore()
		

func save_if_new_highscore():
	var file = FileAccess.open(SAVE_FILE_PATH,FileAccess.WRITE)
	if file:
		file.store_64(high_score)
		file.close()

func load_highscore():
	if FileAccess.file_exists(SAVE_FILE_PATH):
		var file = FileAccess.open(SAVE_FILE_PATH,FileAccess.READ)
		if file:
			high_score = file.get_64()
			file.close
