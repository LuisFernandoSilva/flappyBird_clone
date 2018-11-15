extends Node2D

onready var bird = get_node("bird")
onready var replay = get_node("timerReplay")
onready var scoreLabel = get_node("score/Control/scoreLabel")

var score = 0
var state = 1

const PLAY = 1
const LOSE = 2



func _ready():
	
	pass
func kill():
	#faz o passaro parar e saltar pra esquerda
	bird.apply_impulse(Vector2(0,0), Vector2(-1000,0))
	get_node("backGroundAnimation").stop()
	get_node("soundHit").play()
	state = LOSE
	replay.start()
	
func addScore():
	 score +=1
	 scoreLabel.set_text(str(score))
	 get_node("soundScore").play()
	

func _on_timerReplay_timeout():
	#reinincia o jogo
	get_tree().reload_current_scene()
