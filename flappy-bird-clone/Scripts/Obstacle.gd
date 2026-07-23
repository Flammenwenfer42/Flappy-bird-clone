extends Node2D

@onready var pipe_1: StaticBody2D = $pipe1
@onready var pipe_2: StaticBody2D = $pipe2
@onready var collision_shape: CollisionShape2D = $Win/CollisionShape2D
@onready var screen_notifier_: VisibleOnScreenNotifier2D = $VisibleOnScreenNotifier2D
@onready var score: Label = $"Score Presenter/Score"

	

func _on_win_body_entered(body: Node2D) -> void:
	Globe.score += 1
	


func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	queue_free() # Replace with function body.
	print("I'm gone'")
