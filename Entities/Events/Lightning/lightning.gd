extends Area2D

func _ready() -> void:
	add_to_group("fire")

func _on_timer_timeout() -> void:
	queue_free()
