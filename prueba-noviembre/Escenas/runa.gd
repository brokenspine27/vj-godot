extends Area2D


func _rune_grabbed(body: Node2D) -> void:
	Global.runas += 1
	print(Global.runas)
	queue_free()
