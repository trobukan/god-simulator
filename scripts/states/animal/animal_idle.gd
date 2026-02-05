class_name AnimalIdle
extends AnimalState

var idle_time: float

func enter(_previous_state_path: String, _data := {}) -> void:
	randomize_idle()

func update(delta: float) -> void:
	if idle_time > 0:
		idle_time -= delta
	else:
		finished.emit(WALK)
		
func physics_update(_delta: float) -> void:
	animal.velocity = Vector2.ZERO
	
func randomize_idle() -> void:
	idle_time = randf_range(0.5, 1.5)
	
