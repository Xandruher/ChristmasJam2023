extends Node3D



func _on_attack_hitbox_body_entered(body):
	$"../"._handle_hitbox_collision(body)
