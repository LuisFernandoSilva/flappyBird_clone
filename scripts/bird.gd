extends RigidBody2D



func _ready():
	set_process_input(true) #monitora todos os comandos referente ao bird
	
# controla os eventos na tela, que sao preconfigurados no input map das configuraçoes
func _input(event):
	#se o evento pressionado for touch
	if event.is_action_pressed("touch"):
		on_touch()
	
func on_touch():
	#chama funcao native impulso pra configurar o salto pra cima, passando dois parametros de coordenada, aonde esta e pra aonde vai
	apply_impulse(Vector2(0,0), Vector2(0,-1000))
