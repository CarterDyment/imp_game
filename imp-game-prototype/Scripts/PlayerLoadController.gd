extends Node2D

const PlayerScene = preload("res://Scenes/Player.tscn")
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var character_instance = PlayerScene.instantiate() as CharacterBody2D
	character_instance.position = Vector2(576, 324) #put player in the middle of the screen to start
	add_child(character_instance)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass
