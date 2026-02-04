class_name GUI
extends Control 

# > | Nodes | <
@onready var current_label: Label = $CurrentLabel
@onready var menu_selection: Control = $MenuSelection

# > | Variables | <
var event_selected: String 

@onready var buttons: Dictionary[String, Button] = {
	"duck": $MenuSelection/Buttons/Duck,
	"pig": $MenuSelection/Buttons/Pig,
	"cow": $MenuSelection/Buttons/Cow,
#  	"lightning": $MenuSelection/Buttons/Lightning,
	"sheep": $MenuSelection/Buttons/Sheep,
#   "fire": $MenuSelection/Buttons/Fire,
#	"kill_all": $MenuSelection/Buttons/KillAll,
	"human": $MenuSelection/Buttons/Human
}
func _ready():
	Timer.new()
	# > | Connections | < 
	# Connect all buttons to select_event function
	for button in buttons:
		buttons[button].pressed.connect(select_event.bind(button))
	
	menu_selection.mouse_entered.connect(func(): mouse_filter =Control.MOUSE_FILTER_STOP)
	menu_selection.mouse_exited.connect(func(): mouse_filter = Control.MOUSE_FILTER_PASS)
		
func _process(_delta: float) -> void:
	current_label.text = "event: %s" % event_selected
	
func select_event(event: String) -> void:
		event_selected = event
		GameEvents.event_requested.emit(event_selected)
