extends CanvasLayer

@onready var numero_runas: Label = $numero_runas
@onready var numero_vidas: Label = $numero_vidas

func _process(_delta):
	numero_runas.text = str(Global.runas)
	
	var vidas = ""
	for i in range(Global.vidas):
		vidas += "❤️"
		
	numero_vidas.text = vidas
