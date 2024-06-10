extends CharacterBody2D

## FIELDS
# Grab a reference to the children nodes
@onready var sprite: Sprite2D = $Sprite
@onready var collider: CollisionShape2D = $Collider

# Variables that you can change in the editor
@export_category("Movement")
@export_group("Walk")
@export var walk_speed: float
@export var walk_accel: float # Used in advanced vers.
@export var walk_decel: float # Used in advanced vers.

# Used to track player input
var move_dir: Vector2 = Vector2.ZERO
var look_dir: Vector2 = Vector2.ZERO

## METHODS
# Runs at game framerate (used for all calculations)
func _process(delta: float) -> void:
	# Grab player input from the keybinds
	move_dir = Vector2(
		Input.get_axis("move_left", "move_right"),
		Input.get_axis("move_forward", "move_backward")
	).normalized() # Normalization fixes fast diagonal movement
	
	# Used to track player mouse movement
	# Not really needed here but I left it in anyway
	look_dir = (get_global_mouse_position()-position).normalized()
	
	# Set the player's velocity to their input
	velocity = move_dir * walk_speed

# Runs at a constant 60fps (used to do physics)
func _physics_process(delta: float) -> void:
	# Apply the velocity set above to the player
	move_and_slide()
