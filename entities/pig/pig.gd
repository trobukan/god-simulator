extends Entity
class_name Pig

@onready var state_label: Label = $StateLabel
@onready var state_machine: StateMachine = $StateMachine

func _process(_delta: float) -> void:
	state_label.text = state_machine.state.name

func _physics_process(_delta: float) -> void:
	move_and_slide()
