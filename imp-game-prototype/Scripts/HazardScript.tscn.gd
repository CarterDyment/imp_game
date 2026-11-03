extends Area2D

@export var speed = 100
@export var startPos = 0
@export var endPos = 100
var currentPos = startPos
var direction = 1

func _ready() -> void:
	startPos = Vector2 (0,0)
	endPos = Vector2 (0,0)
	currentPos = Vector2 (0,0)
	
func _on_body_entered(body: Node2D) -> void:
	body.kill_player()
	
func _process(delta: float) -> void:
	if (Globals.level == 1):
		move(delta)
	
	
func move(delta):
	currentPos.y += speed * direction * delta
	position.y = currentPos.y
