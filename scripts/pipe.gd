extends Node2D

#variavel manipulavel no cmapo de propriedades do objeto
export var speed = -400

func _ready():
	#ativa a visializaçao do processos dos frames
	set_process(true)
	
func _process(delta):
	#pega a posiçao e altera um pouco pra esquerda, pega a posiçao altual e soma com outro vecto no x faz a mul e no y fica em 0
	set_pos(get_pos() + Vector2(speed * delta , 0))
	if get_pos().x < -100:
		queue_free()


