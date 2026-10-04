extends Control

func _ready():
	$VBoxContainer/Button.pressed.connect(_on_mulai_pressed)
	$VBoxContainer/Button2.pressed.connect(_on_keluar_pressed)

func _on_mulai_pressed():
	get_tree().change_scene_to_file("res://level.tscn")

func _on_keluar_pressed():
	get_tree().quit()
