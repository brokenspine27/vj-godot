extends Area2D

func _on_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:

		# --- Condición de victoria ---
		if Global.runas >= 7:
			get_tree().call_deferred("change_scene_to_file", "res://Escenas/menu_victoria.tscn")
			return

		# --- Si NO tiene suficientes runas ---
		Global.vidas -= 1

		# Si se quedó sin vidas -> menú de muerte
		if Global.vidas <= 0:
			get_tree().call_deferred("change_scene_to_file", "res://Escenas/menu_muerte.tscn")
		else:
			get_tree().call_deferred("reload_current_scene")
