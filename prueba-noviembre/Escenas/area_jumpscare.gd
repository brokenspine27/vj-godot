extends Area2D


func _on_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		$"../MoonHorror".visible = true
		$AudioStreamPlayer2D.play()
	
	


func _on_body_exited(body: Node2D) -> void:
	if body is CharacterBody2D:
		$"../MoonHorror".visible = false
		
