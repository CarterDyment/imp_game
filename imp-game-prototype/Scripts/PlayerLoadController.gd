extends Node2D

const PlayerScene = preload("res://Scenes/Player.tscn")
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Globals.PlayerPosition = Vector2(180,300)
	var character_instance = PlayerScene.instantiate() as CharacterBody2D
	character_instance.position = Globals.PlayerPosition #put player in the middle of the screen to start
	add_child(character_instance)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	
	pass
