extends Node2D

# > | Variables | <
var current_selection: String

# > | Scenes | <
var entities_data: EntitiesData = preload("res://scripts/datas/entities/entities.tres")

func _ready() -> void:
	GameEvents.event_requested.connect(change_selection)
	
func change_selection(event: String) -> void:
	current_selection = event
	
func _unhandled_input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			spawn_entity(current_selection)
		
func spawn_entity(entity: String) -> void:
	if entity == "": return
	
	var entity_scene: PackedScene = entities_data.entities.get(entity)
	if entity_scene:
		var new_entity : Node2D = entity_scene.instantiate()
		owner.add_child(new_entity)
		
		new_entity.global_position = get_global_mouse_position()
