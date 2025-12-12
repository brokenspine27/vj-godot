extends Area2D


func _on_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D and Global.runas >= 3:
		get_tree().call_deferred("change_scene_to_file","res://Escenas/escena_2.tscn")
	else:
		Global.vidas -= 1
		if Global.vidas <= 0:
			get_tree().call_deferred("change_scene_to_file", "res://Escenas/menu_muerte.tscn")
		else:
			get_tree().call_deferred("reload_current_scene")
