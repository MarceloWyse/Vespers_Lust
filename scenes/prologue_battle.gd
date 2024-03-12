extends Control

@onready var ap_label = $APLabel
@onready var player_hp_label = $PlayerHPLabel
@onready var enemy_hp_label = $EnemyHPLabel
@onready var animation_player = $AnimationPlayer
@onready var enemy_hp_label_2 = $EnemyHPLabel2
@onready var enemy_hp_label_3 = $EnemyHPLabel3
@onready var progress_bar = $ProgressBar
@onready var miss_counter = $MissCounter
@onready var animated_sprite_2d = $AnimatedSprite2D
@onready var animation_player_2 = $AnimationPlayer2
@onready var shoot_btn = $ShootBtn

var enemy_hp = 1000
var player_hp = 50
var max_hp = 50

var player_attack = 5
var ap = 5
var extra_ap = 0  
var max_ap = 5
var enemy1_alive = true
var enemy2_alive = true
var enemy3_alive = true
var turn_ended = false
var def = 2
var has_def = false
var attacking = false
var used_bite = false
var used_defense = false
var player_alive = true
var n = 1

func _ready():
	pass

func _process(delta):
	ap_label.text = "AP = %s/%s" %[ap, max_ap]

	progress_bar.max_value = max_hp
	progress_bar.value = player_hp
	
	player_hp_label.text = "%s/%s" %[player_hp, max_hp]

func _on_shoot_btn_pressed():
	shoot_btn.disabled = true
	animated_sprite_2d.play("shoot")
	$AudioStreamPlayer.play()
	animation_player_2.play("show_damage")
	if n == 1:
		animation_player.play("dialogue1")
		await  animation_player.animation_finished
		shoot_btn.disabled = false
		n = 2
	elif n == 2:
		animation_player.play("dialogue_2")
		await  animation_player.animation_finished
		shoot_btn.disabled = false
		n = 3
	elif n == 3:
		animation_player.play("dialogue_3")
		await  animation_player.animation_finished
		shoot_btn.disabled = false
		n = 4
	elif n == 4:
		animation_player.play("dialogue_4")
		await  animation_player.animation_finished
		await get_tree().create_timer(1).timeout
		Events.battle_ended = true
		Events.change_scene_to_path.emit("res://scenes/prologue.tscn")
