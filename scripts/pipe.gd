extends Node2D

#variavel manipulavel no cmapo de propriedades do objeto
export var speed = -400
var scene

func _ready():
	#pega a arvorea d scene e a scene atual
	scene = get_tree().get_current_scene()
	#ativa a visializaçao do processos dos frames
	set_process(true)
	
func _process(delta):
	#pega a posiçao e altera um pouco pra esquerda, pega a posiçao altual e soma com outro vecto no x faz a mul e no y fica em 0
	if scene.state == scene.PLAY:
		set_pos(get_pos() + Vector2(speed * delta , 0))
	if get_pos().x < -100:
		queue_free()




func _on_Area2D_body_enter( body ):
	
	if body.get_name() == "bird":
		scene.kill()
		
	  


func _on_scoreCollisionArea_body_enter( body ):
	scene.addScore()
