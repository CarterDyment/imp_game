extends Area2D

func _on_body_entered(body: Node) -> void:
	if body is TileMapLayer:
		print("collided")
		Globals.level += 1
		Globals.switchlevel()
