extends Node

func _ready():
	connect("pressed", self, "_on_button_pressed")
	
func _on_button_pressed():
	get_tree().quit()