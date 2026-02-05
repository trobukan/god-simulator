class_name AnimalWalk
extends AnimalState

var speed: float = 50.0
var move_direction: Vector2 
var walk_time : float

func enter(_previous_state_path: String, _data := {}) -> void:
	randomize_walk()

func update(delta: float) -> void:
	if walk_time > 0:
		walk_time -= delta
	else:
		finished.emit(IDLE)

func physics_update(_delta: float) -> void:
	if animal:
		animal.velocity = move_direction * speed

func randomize_walk():
	move_direction = Vector2(randf_range(-1, 1), randf_range(-1, 1)).normalized()
	walk_time = randf_range(1.0, 2.0)
	
