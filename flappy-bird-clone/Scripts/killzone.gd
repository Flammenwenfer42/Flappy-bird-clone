extends Area2D
@onready var timer: Timer = $Timer

func _ready():
	$Timer.timeout.connect(_on_timer_timeout)

func _on_body_entered(body: CharacterBody2D) -> void:
	body.get_node("CollisionShape2D").queue_free()
	Engine.time_scale = 0.5
	print("You died") # Replace with function body.
	timer.start()
	
	

func _on_timer_timeout():
	Engine.time_scale = 1
	if Globe.score > Globe.high_score:
		Globe.high_score = Globe.score
	get_tree().change_scene_to_file("res://Scenes/DeathScreen.tscn")
	
	
