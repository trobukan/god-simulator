extends Resource
class_name EntitiesData

var entities: Dictionary[String, PackedScene] = {
	"duck": preload("res://entities/duck/duck.tscn"),
	"pig": preload("res://entities/pig/pig.tscn"),
	"cow": preload("res://entities/cow/cow.tscn"),
	"human": preload("res://entities/human/human.tscn"),
	"sheep": preload("res://entities/sheep/sheep.tscn"),
	"lightning": preload("res://entities/events/lightning/lightining.tscn"),
	"fire": preload("res://entities/events/fire/fire.tscn")
}
