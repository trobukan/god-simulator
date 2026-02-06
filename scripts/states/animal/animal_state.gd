class_name AnimalState
extends State

const IDLE = "Idle"
const WALK = "Walk"

var animal: Entity

func _ready() -> void:
	await owner.ready
	animal = owner as Entity
	assert(animal != null)
	
