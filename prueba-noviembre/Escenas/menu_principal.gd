extends Control


func _on_iniciar_pressed() -> void:
	get_tree().call_deferred("change_scene_to_file","res://Escenas/escena_principal.tscn")
	


func _on_salir_pressed() -> void:
	get_tree().quit() # Replace with function body.
