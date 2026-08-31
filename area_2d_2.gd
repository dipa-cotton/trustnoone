extends Area2D

@export var respawn_point: Vector2 = Vector2(100, 100)

func _on_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		body.global_position = respawn_point
	print("ENTERED: ", body.name)
	body.global_position = respawn_point
