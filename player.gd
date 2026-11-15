
extends CharacterBody2D

const SPEED = 200
const JUMP_VELOCITY = -200

var in_water = 1

var spos

func _ready():
	spos= global_position
func _physics_process(delta: float) -> void:

	# Gravity and jumping
	if in_water == 1:
		if not is_on_floor():
			velocity += get_gravity() * delta
		if Input.is_action_just_pressed("ui_accept") and is_on_floor():
			velocity.y = JUMP_VELOCITY

	# Movement
	var direction := Input.get_axis("ui_left", "ui_right")

	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()


func _on_area_2d_body_entered(body: Node2D) -> void:
	print("1 enter")
	in_water = 0
