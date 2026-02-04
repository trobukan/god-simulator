class_name Mouse
extends Node2D


enum States {
	IDLE,
	CLICK,
	GRAB
}

var current_state: States = States.IDLE

# > | Nodes | <
@onready var state_label: Label = $StateLabel
@onready var sprite: Sprite2D = $Sprite
@onready var area_collision: Area2D = $Area2D
@onready var grab_timer: Timer = $GrabTimer

func _ready() -> void:
	Input.mouse_mode = Input.MOUSE_MODE_HIDDEN
	area_collision.area_entered.connect(entity_detected)

	
func _process(_delta: float) -> void:
	global_position = get_global_mouse_position()
	state_label.text = str(current_state)
	match current_state:
		States.CLICK:
		
		
	
	
func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		if event.pressed:
			change_state(States.CLICK)
		else:
			change_state(States.IDLE)

func entity_detected(area: Area2D) -> void:
	if area.get_parent() is Entity:
		change_state(States.GRAB)

func change_state(new_state: States) -> void:
	current_state = new_state
	
