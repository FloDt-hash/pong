extends CanvasLayer

signal play_again

@onready var winner_label: Label = $Overlay/ContentBox/WinnerLabel
@onready var play_again_button: Button = $Overlay/ContentBox/PlayAgainButton

func _ready() -> void:
	process_mode = Node.PROCESS_MODE_ALWAYS
	hide()
	
	play_again_button.pressed.connect(_on_play_again_pressed)
	
func show_winner(winner_name: String) -> void:
	winner_label.text = winner_name + " win !"
	show()
	
	get_tree().paused = true

func _on_play_again_pressed() -> void:
	get_tree().paused = false
	play_again.emit()
