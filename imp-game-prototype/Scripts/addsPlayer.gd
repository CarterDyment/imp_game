extends Node2D

const PlayerScene = preload("res://Scenes/Player.tscn")

func _ready() -> void:
	var character_instance = PlayerScene.instantiate() as CharacterBody2D
	character_instance.position = Globals.PlayerPosition
	add_child(character_instance)
