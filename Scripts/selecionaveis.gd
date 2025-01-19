extends Node2D

func _on_area_2d_area_entered(area):
	if area.name == "Mouse":
		$AnimationPlayer.play("slide_in")
func _on_area_2d_area_exited(area):
	if area.name == "Mouse":
		$AnimationPlayer.play("slide_out")


func _on_button_pato_pressed():
	$Click.playing = true
	Global.add_pato.emit()


func _on_button_human_pressed():
	$Click.playing = true
	Global.add_humano.emit()


func _on_button_vaca_pressed():
	$Click.playing = true
	Global.add_vaca.emit()



func _on_button_matar_pressed():
	$Kill.playing = true
	Global.kill_all.emit()


func _on_button_porco_pressed():
	$Click.playing = true
	Global.add_porco.emit()


func _on_button_raio_pressed():
	$Raio.playing = true
	Global.add_raio.emit()


func _on_button_ovelha_pressed():
	$Click.playing = true
	Global.add_ovelha.emit()


func _on_button_fogo_pressed():
	$Click.playing = true
	Global.add_fogo.emit()
