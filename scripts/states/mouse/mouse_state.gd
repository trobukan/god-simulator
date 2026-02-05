class_name MouseState
extends State

const IDLE = "Idle"
const CLICK = "Click"

var mouse: MouseNode

func _ready() -> void:
	await owner.ready
	mouse = owner as MouseNode
	assert(mouse != null)
