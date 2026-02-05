class_name MouseIdle
extends MouseState

func enter(_previous_state_path: String, _data := {}) -> void:
	mouse.sprite.frame = 0 

func input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			finished.emit(CLICK)
		
