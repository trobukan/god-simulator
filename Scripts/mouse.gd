extends Area2D

var mob_selected = null
var grabing:bool = false

func _process(_delta):
	position = get_global_mouse_position()


func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		if event.pressed:
			var bodys = get_overlapping_areas()
			for area in bodys:
				if area.get_parent().is_in_group("mobs"):
					grabing = true
					if mob_selected is CharacterBody2D:
						mob_selected.velocity = Vector2.ZERO
					break
		else:
			grabing = false
			mob_selected = null
