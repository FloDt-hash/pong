extends CharacterBody2D

@export var speed: float = 400.0
@export var is_ia: bool = false

var ball: CharacterBody2D = null

func _physics_process(delta: float):
	if is_ia:
		_move_ia(delta)
	else:
		_move_player(delta)

	position.y = clamp(position.y, 50, 550)
	
func _move_player(delta):
	var direction = 0
	
	if Input.is_action_pressed("player1_up"):
		direction = -1
	elif Input.is_action_pressed("player1_down"):
		direction = 1
		
	velocity.y = direction * speed
	move_and_slide()

func _move_ia(delta):
	if ball == null:
		return
		
	var gap = ball.position.y - position.y
	
	if abs(gap) < 10:
		velocity.y = 0
	else:
		velocity.y = sign(gap) * speed * 0.7
		
	move_and_slide()
