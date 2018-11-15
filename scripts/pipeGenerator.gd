extends Position2D
#carrega o obejto na cena fazendo o preload dele somente quando estiver realmente pronto
onready var pipe = preload("res://scenes/pipe.tscn")

func _ready():
	randomize()

#emite um evento de escuta pra toda a cena quando o tempo acaba
func _on_Timer_timeout():
	var newPipe = pipe.instance()
	#randomiza as posiçoes conforme a posiçao atual + um vetor com a posiçao em x 0 e a y variando entre 500
	newPipe.set_pos(get_pos() + Vector2(0, rand_range(-500, 500)))
	#agora add esse novo cano como um novo filho de canos com a funcao nativa ower
	get_owner().add_child(newPipe) 