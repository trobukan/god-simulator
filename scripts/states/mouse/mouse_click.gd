class_name MouseClick 
extends MouseState

func enter(_previous_state_path: String, _data := {}) -> void:
	mouse.sprite.frame = 1

func input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		if !event.pressed:
			finished.emit(IDLE)
