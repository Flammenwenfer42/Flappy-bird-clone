extends CharacterBody2D

@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D

var speed = 50
const SPEED = 300.0
const JUMP_VELOCITY = -250.0
const gravity := 1.5
const angle_rotaion = .8

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta * gravity

	# Handle jump.
	if Input.is_action_just_pressed("Jump"):
		velocity.y = JUMP_VELOCITY
		animated_sprite.rotation += 20
		animated_sprite.play("Jump")
	
	position.x += speed * delta
	
	# I have no idea why it's working, but I'm not going to judge it
	# IT SHOULD NOT WORK BECAUSE I HAVE THE SIN NOT THE ANGLE WTF IS GOING ON
	var Sinx = position.y/sqrt(position.x**2 + position.y**2)
	animated_sprite.rotation = Sinx + Sinx*angle_rotaion
	
	# Maaking sure we don't have crazyyyyyyy rotations
	#if animated_sprite.rotation > 45:
	#	animated_sprite.rotation = 45

	
	
	

	move_and_slide()
