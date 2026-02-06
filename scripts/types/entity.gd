class_name Entity
extends CharacterBody2D

@export var health_component: HealthComponent
@export var hitbox_component: HitboxComponent

func _ready() -> void:
	if hitbox_component:
		hitbox_component.take_damage.connect(_take_damage)
		
func _take_damage(attack_damage: int):
	if health_component:
		health_component.damage(attack_damage)
