extends CanvasLayer

func _ready() -> void:
	process_mode = Node.PROCESS_MODE_ALWAYS
	
	hide()

func _input(event: InputEvent):
	if event.is_action_pressed("ui_cancel"):
		_toggle_pause()
		
func _toggle_pause() -> void:
	var is_paused: bool = not get_tree().paused
	get_tree().paused = is_paused
	
	if is_paused:
		show()
	else:
		hide()
