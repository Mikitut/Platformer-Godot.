extends Node2D

@onready var player = $Player
@onready var goal = $Goal
var start_pos: Vector2

func _ready():
	start_pos = player.position
	goal.reached.connect(_on_goal_reached)

func _physics_process(_delta):
	# Respawn kalau jatuh ke luar layar
	if player.position.y > 1000:
		player.position = start_pos
		player.velocity = Vector2.ZERO

func _on_goal_reached():
	get_tree().paused = true
	print("KAMU MENANG!")
