extends GridContainer

func _ready() -> void:
	for button in get_children():
		if button is Button:
			button.pressed.connect(_on_button_pressed.bind(button.name))

func _on_button_pressed(button_name: String) -> void:
	$"../Audios/Click".play()
	match button_name:
		"Grab":
			Global.selected_tool = "mao"
			print("tool: grab")
		"KillAll":
			Global.kill_all.emit()
		"Duck":
			Global.selected_tool = "spawn"
			Global.add_mob.emit(1, Vector2.ZERO)
		"Pig": 
			Global.selected_tool = "spawn"
			Global.add_mob.emit(0, Vector2.ZERO)
		"Lightning": 
			Global.selected_tool = "spawn"
			Global.add_mob.emit(2, Vector2.ZERO)
		"Cow": 
			Global.selected_tool = "spawn"
			Global.add_mob.emit(3, Vector2.ZERO)
		"Human": 
			Global.selected_tool = "spawn"
			Global.add_mob.emit(4, Vector2.ZERO)
		"Sheep": 
			Global.selected_tool = "spawn"
			Global.add_mob.emit(5, Vector2.ZERO)
		"Fire": 
			Global.selected_tool = "spawn"
			Global.add_mob.emit(6, Vector2.ZERO)
		
