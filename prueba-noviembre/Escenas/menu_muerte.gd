extends Control


func _on_iniciar_pressed() -> void:
	get_tree().call_deferred("change_scene_to_file","res://Escenas/menu_principal.tscn" )
