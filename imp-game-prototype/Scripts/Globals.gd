extends Node

var level = 0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.
var PlayerPosition = Vector2(0, 0)
var EndHit = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if Input.is_action_pressed("reset"):
		reset()

func switchlevel():
	if level == 0:
		get_tree().change_scene_to_file("res://Scenes/level_1.tscn")
		level += 1

func reset():
	get_tree().reload_current_scene()
