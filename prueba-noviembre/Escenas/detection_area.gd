extends Area2D


func _on_body_entered(body: Node2D) -> void:
	if body is RigidBody2D:
		print("Objeto cerca")
		$"..".grabbable_object = body
		$"..".can_grab = true
		


func _on_body_exited(body: Node2D) -> void:
	if body is RigidBody2D:
		print("Ya no hay objeto cerca")
		$"..".grabbable_object = null
		$"..".can_grab = false
