extends CharacterBody2D

const speed = 275 #change if too slow
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	position = Vector2(576, 324) #put player in the middle of the screen to start
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	var direction = Input.get_vector("left", "right", "up", "down")
	velocity = direction * speed 
	move_and_slide()
	pass
