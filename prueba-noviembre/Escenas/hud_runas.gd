extends CanvasLayer

@onready var numero: Label = $numero_runas

func _process(_delta):
	
	var vidas = ""
	numero.text = str(Global.runas)
	
	for i in range(Global.vidas):
		vidas += "❤️"
		
	$numero_vidas.text = vidas
	
