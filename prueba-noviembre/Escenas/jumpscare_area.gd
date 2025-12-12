extends Area2D


func _on_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		$"../MoonHorror".visible = true
		$jump_scare.play()
		Global.vidas -= 1
		 


func _on_body_exited(body: Node2D) -> void:
	if body is CharacterBody2D:
		$"../MoonHorror".visible = false# Replace with function body.
		$jump_scare.stop()
