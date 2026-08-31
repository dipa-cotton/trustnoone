extends CharacterBody2D

const SPEED = 900.0
const JUMP_VELOCITY = -600.0

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	var direction := Input.get_axis("left", "right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()


func _on_area_2d_6_body_entered(body: Node2D) -> void:
	pass


func _on_area_2d_2_body_entered(body: Node2D) -> void:
	pass # Replace with function body.


func _on_area_2d_2_body_exited(body: Node2D) -> void:
	pass # Replace with function body.


func _on_area_2d_2_body_shape_entered(body_rid: RID, body: Node2D, body_shape_index: int, local_shape_index: int) -> void:
	pass # Replace with function body.


func _on_area_2d_2_body_shape_exited(body_rid: RID, body: Node2D, body_shape_index: int, local_shape_index: int) -> void:
	pass # Replace with function body.
