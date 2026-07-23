extends Node2D
@export var Obstacle_scene: PackedScene
@onready var PLAYER: CharacterBody2D = $Player

@onready var timer: Timer = $Timer
var rng = RandomNumberGenerator.new()


func spawn_obstacle():
	var newObstacle = Obstacle_scene.instantiate()
	#newObstacle.position = Vector2(PLAYER.position.x +200,PLAYER.position.y+130)
	newObstacle.position = Vector2(PLAYER.position.x +200,rng.randi_range(140,240-rng.randi_range(0,10)))
	add_child(newObstacle)

func _on_timer_timeout() -> void:
	spawn_obstacle()
	if Globe.score>4:
		PLAYER.speed += 0.5

	
	
	
	
	
	
	
	
	
	
	
	
 
