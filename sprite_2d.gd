extends Sprite2D

var speed = 400
var angular_speed = PI

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("hello from _ready")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	#var velocity = Vector2.UP.rotated(rotation) * speed
	
	#rotation += angular_speed * delta
	
	var direction = 0
	if Input.is_action_pressed("ui_left"):
		direction = -1
	if Input.is_action_pressed("ui_right"):
		direction = 1

	rotation += angular_speed * direction * delta
	
	var velocity = Vector2.ZERO
	if Input.is_action_pressed("ui_up"):
		velocity = Vector2.UP.rotated(rotation) * speed
	if Input.is_action_pressed("ui_down"):
		velocity = Vector2.DOWN.rotated(rotation) * speed
		
	position += velocity * delta


# Called when an instance of a class is created
func _init():
	print("hello from _init")

# Called every time the player presses a key
func _unhandled_input(event: InputEvent) -> void:
	pass
	
