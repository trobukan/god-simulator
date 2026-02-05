class_name MouseNode
extends Node2D

@onready var sprite: Sprite2D = $Sprite
@onready var state_machine: StateMachine = $StateMachine
@onready var state_label: Label = $StateLabel
@export var interaction_component: InteractComponent

func _init() -> void:
	Input.mouse_mode = Input.MOUSE_MODE_HIDDEN

func _process(_delta: float) -> void:
	follow_mouse()
	state_label.text = state_machine.state.name 

func follow_mouse() -> void:
	var mouse_pos = get_global_mouse_position()
	global_position = mouse_pos
