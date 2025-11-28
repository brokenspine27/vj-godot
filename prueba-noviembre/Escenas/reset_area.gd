extends Area2D


func _on_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		get_tree().change_scene_to_file("res://Escenas/escena_2.tscn")
	if body is RigidBody2D:
		get_tree().change_scene_to_file("res://Escenas/nueva_escena_principal.tscn")
