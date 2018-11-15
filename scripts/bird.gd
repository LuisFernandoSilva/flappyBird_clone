extends RigidBody2D

var scene

func _ready():
	scene = get_tree().get_current_scene()
	set_process_input(true) #monitora todos os comandos referente ao bird
	
# controla os eventos na tela, que sao preconfigurados no input map das configuraçoes
func _input(event):
	#se o evento pressionado for touch
	if event.is_action_pressed("touch"):
		on_touch()
	
func on_touch():
	#chama funcao native impulso pra configurar o salto pra cima, passando dois parametros de coordenada, aonde esta e pra aonde vai
	if scene.state == scene.PLAY:
		apply_impulse(Vector2(0,0), Vector2(0,-1000))
		get_node("soundFly").play()
