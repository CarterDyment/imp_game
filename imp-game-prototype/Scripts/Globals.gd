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
		PlayerPosition = Vector2(180, 300)
		get_tree().change_scene_to_file.call_deferred("res://Scenes/Tutorial.tscn")
	elif level == 1:
		PlayerPosition = Vector2(300, 300)
		get_tree().change_scene_to_file.call_deferred("res://Scenes/level_1.tscn")
		

func reset():
	get_tree().call_deferred("reload_current_scene")
