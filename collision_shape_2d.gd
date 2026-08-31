extends CollisionShape2D

# Set the exact global coordinates where the player should reappear
@export var respawn_point: Vector2 = Vector2(0, 0)

	# Connect the signal that detects when a body enters this area
func _on_body_entered(body: Node) -> void:
	# Check if the body that entered is the player
	if body.is_in_group("Player"):
		respawn_player(body)

func respawn_player(player: Node) -> void:
	# Reset the player's position to the respawn point
	player.global_position = respawn_point
