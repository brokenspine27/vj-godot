extends Area2D


func _rune_grabbed(_body: Node2D) -> void:
	Global.runas += 1
	print(Global.runas)
	queue_free()
