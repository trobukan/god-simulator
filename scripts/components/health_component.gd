class_name HealthComponent
extends Node

@export var max_health: int = 1
@onready var health: int = max_health

func damage(attack_damage):
	health -= attack_damage
	if health <= 0:
		die()

func die():
	get_parent().queue_free()
	
