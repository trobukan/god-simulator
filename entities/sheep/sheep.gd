class_name Sheep
extends Entity

# > | Nodes | <
@onready var health_label: Label = $HealthLabel
@onready var state_label: Label = $StateLabel
@onready var state_machine: StateMachine = $StateMachine

func _process(_delta: float) -> void:
	state_label.text = state_machine.state.name
	health_label.text = str(health_component.health)

func _physics_process(_delta: float) -> void:
	move_and_slide()
