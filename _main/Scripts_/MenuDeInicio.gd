extends Control

func _on_QuitButton_pressed():
	get_tree().quit()
	
func _on_PlayButton_pressed():
	print("HOLAAAAA")
	get_tree().change_scene("res://_main/scenes/Menus/EscenaPrincipal.tscn")
