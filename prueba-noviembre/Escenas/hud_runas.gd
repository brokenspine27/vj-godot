extends CanvasLayer

@onready var numero: Label = $numero

func _process(_delta):
	numero.text = str(Global.runas)
