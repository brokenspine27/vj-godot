extends CanvasLayer

@onready var numero: Label = $numero

func _process(delta):
	numero.text = str(Global.runas)
