extends Area2D



var fogo = preload("res://Scenes/events/fogo.tscn")

func _on_timer_timeout():
	var FOGO = fogo.instantiate()
	get_parent().add_child(FOGO)
	FOGO.position = global_position
	queue_free()



func _on_tree_exited():
	pass
