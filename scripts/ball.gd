extends CharacterBody2D

signal goal_scored(player)

@export var initial_speed: float = 400.0

var speed: float = 400.0
var direction: Vector2 = Vector2.ZERO

@onready var sound_rebound = $AudioStreamPlayer2D
@onready var hit_particles: CPUParticles2D = $HitParticles

func _ready():
	reset_ball()
	
func reset_ball():
	position = Vector2(512, 300)
	
	var angle = randf_range(-PI/4, PI/4) # Between -45° & 45°
	if randf() > 0.5:
		angle += PI # Reverse direction (to the left)
		
	direction = Vector2(cos(angle), sin(angle)).normalized()
	speed = initial_speed
	
func  _physics_process(delta: float):
	velocity = direction * speed
	move_and_slide()
	
	if get_slide_collision_count() > 0:
		sound_rebound.play()
		var col = get_slide_collision(0)
		
		if col.get_collider().is_in_group("paddle"):
			var paddle = col.get_collider()
			var gap_y = position.y - paddle.position.y
			var rebound_angle = gap_y / 50.0 # Normalize
			
			direction.x = -direction.x
			direction.y += rebound_angle * 0.5
			direction = direction.normalized()
			
			speed *= 1.05
			
			_emit_hit_particles()
			
	if position.y <= 7.5 or position.y >= 592.5:
		direction.y = -direction.y
		
		_emit_hit_particles()
		
	if position.x < 0:
		goal_scored.emit(2)
		reset_ball()
	elif position.x > 1024:
		goal_scored.emit(1)
		reset_ball()

func _emit_hit_particles() -> void:
	hit_particles.restart()
	hit_particles.emitting = true
