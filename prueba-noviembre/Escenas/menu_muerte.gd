extends Control


func _on_iniciar_pressed() -> void:
	Global.vidas = 6
	get_tree().call_deferred("change_scene_to_file","res://Escenas/menu_principal.tscn" )


func _on_salir_pressed() -> void:
	get_tree().quit()
