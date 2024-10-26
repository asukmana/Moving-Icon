extends Sprite2D

var speed = 400
var angular_speed = PI

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("hello from _ready")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var velocity = Vector2.UP.rotated(rotation) * speed
	
	rotation += angular_speed * delta
	position += velocity * delta


# Called when an instance of a class is created
func _init():
	print("hello from _init")
