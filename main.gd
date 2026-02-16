extends Node2D

@onready var score_left_label = $UI/ScoreLeft
@onready var score_right_label = $UI/ScoreRight
@onready var ball = $Ball
@onready var paddle_right = $PaddleRight

var score_left: int = 0
var score_right: int = 0

func _ready() -> void:
	ball.goal_scored.connect(_on_ball_goal_scored)
	
	paddle_right.ball = ball
	
	_update_score()
	
func _on_ball_goal_scored(player: int):
	if player == 1:
		score_left += 1
	else:
		score_right += 1
		
	_update_score()
	
	if score_left >= 5:
		print("Player Left win !")
	elif score_right >= 5:
		print("Player Right win !")

func _update_score():
	score_left_label.text = str(score_left)
	score_right_label.text = str(score_right)
