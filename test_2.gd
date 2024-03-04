extends Control

@onready var sword = $Sword
@onready var turn_over = $TurnOver
@onready var ap_label = $APLabel
@onready var attack_btn = $AttackBtn
@onready var defend_btn = $DefendBtn
@onready var player_hp_label = $PlayerHPLabel
@onready var enemy_hp_label = $EnemyHPLabel
@onready var animation_player = $AnimationPlayer
@onready var bite_btn = $BiteBtn
@onready var color_rect = $ColorRect
@onready var enemy_hp_label_2 = $EnemyHPLabel2
@onready var enemy_hp_label_3 = $EnemyHPLabel3
@onready var progress_bar = $ProgressBar
@onready var enemy_1_progress_bar = $Enemy1ProgressBar
@onready var enemy_2_progress_bar = $Enemy2ProgressBar
@onready var enemy_3_progress_bar = $Enemy3ProgressBar
@onready var vesper = $Vesper
@onready var damage_counter = $DamageCounter

var enemy_hp = 20
var enemy1_max_hp = 20
var enemy2_hp = 30
var enemy2_max_hp = 30
var enemy3_hp = 40
var enemy3_max_hp = 40
var enemy_attack = 8
var player_hp = 50
var max_hp = 50
	
#var player_hp = 10:
#	set(new_value):
#		player_hp = new_value

#var test_set = 10:
#	set = my_func
#
#func my_func(new_value):
#	player_hp = new_value

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
#	<< Whispering marker. >>
	
func _process(delta):
	ap_label.text = "AP = %s/%s" %[ap, max_ap]

	player_hp = max(0,player_hp)
	enemy_hp = max(0,enemy_hp)
	enemy2_hp = max(0,enemy2_hp)
	enemy3_hp = max(0,enemy3_hp)
	
	if player_hp == 0:
		while(n == 1):
			player_alive = false
			var my_label = Label.new()
			var my_width = ProjectSettings.get("display/window/size/viewport_width")
			var my_height = ProjectSettings.get("display/window/size/viewport_height")
			my_label.global_position = Vector2(my_width/2 - 300,my_height/2)
			my_label.set("theme_override_font_sizes/font_size", 100)
			my_label.text = "Game Over"
			get_tree().current_scene.add_child(my_label)

			
			var my_panel = Panel.new()
			my_panel.size = Vector2(my_width, my_height)
			my_panel.set("show_behind_parent", true)
			add_child(my_panel)
			n = 2

	progress_bar.max_value = max_hp
	progress_bar.value = player_hp
	
	if enemy1_alive:
		enemy_1_progress_bar.max_value = enemy1_max_hp
		enemy_1_progress_bar.value = enemy_hp
	
	if enemy2_alive:
		enemy_2_progress_bar.max_value = enemy2_max_hp
		enemy_2_progress_bar.value = enemy2_hp
	
	if enemy3_alive:
		enemy_3_progress_bar.max_value = enemy3_max_hp
		enemy_3_progress_bar.value = enemy3_hp
	
	player_hp_label.text = "%s/%s" %[player_hp, max_hp]
	
#	if enemy1_alive:
#		enemy_hp_label.text = "Enemy 1 HP: %s" %enemy_hp
#	if enemy2_alive:
#		enemy_hp_label_2.text = "Enemy 2 HP: %s" %enemy2_hp
#	if enemy3_alive:
#		enemy_hp_label_3.text = "Enemy 3 HP: %s" %enemy3_hp
	
#	while turn_ended == false:
#		attack_btn.disabled = true
#		defend_btn.disabled = true
	
	if ap < 5:
		bite_btn.disabled = true
		attack_btn.disabled = true
	
	if ap < 3:
		defend_btn.disabled = true
	
	if enemy_hp <= 0 and enemy1_alive:
		color_rect.queue_free()
		$EnemyHPLabel.queue_free()
		enemy_1_progress_bar.queue_free()
		enemy1_alive = false
	if enemy2_hp <= 0 and enemy2_alive:
		$ColorRect2.queue_free()
		$EnemyHPLabel2.queue_free()
		enemy_2_progress_bar.queue_free()
		enemy2_alive = false
	if enemy3_hp <= 0 and enemy3_alive:
		$ColorRect3.queue_free()
		$EnemyHPLabel3.queue_free()
		enemy_3_progress_bar.queue_free()
		enemy3_alive = false
	
	if attacking == true:
		sword.global_position = get_local_mouse_position() + Vector2(-5,-5)
		attack_btn.disabled = true
		bite_btn.disabled = true
		defend_btn.disabled = true
		turn_over.disabled = true
		if Input.is_mouse_button_pressed(MOUSE_BUTTON_RIGHT):
			attacking = false
			if not used_bite:
				bite_btn.disabled = false
			if not used_defense:
				defend_btn.disabled = false
			turn_over.disabled = false
			sword.hide()
			attack_btn.disabled = false
			ap += 4
			Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
		
func _on_attack_btn_pressed():
	ap -= 4 
	attacking = true
	sword.show()
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)
	
func _on_defend_btn_pressed():
	extra_ap = 3
	ap += extra_ap
	defend_btn.disabled = true
	attack_btn.disabled = true
	bite_btn.disabled = true
	has_def = true

func _on_turn_over_pressed():
	if ap <= 5: 
		ap = max_ap
		
	var random_action = randi_range(0,3)
	if random_action == 0 or random_action == 1:
		if enemy1_alive:
			animation_player.play("enemy1_miss")
			await animation_player.animation_finished
	else:
		if enemy1_alive:
			animation_player.play("attack")
			await animation_player.animation_finished
	
	random_action = randi_range(0,3)
	if random_action == 0 or random_action == 1:	
		if enemy2_alive:
			animation_player.play("enemy2_miss")
			await  animation_player.animation_finished
	else:
		if enemy2_alive:
			animation_player.play("attack_2")
			await animation_player.animation_finished

	random_action = randi_range(0,3)
	if random_action == 0 or random_action == 1:	
		if enemy3_alive:
			animation_player.play("enemy3_miss")
			await  animation_player.animation_finished
	else:
		if enemy2_alive:
			animation_player.play("attack_3")
			await animation_player.animation_finished
	has_def = false
	attack_btn.disabled = false
	bite_btn.disabled = false
	defend_btn.disabled = false

func _on_bite_btn_pressed():
	player_hp += 3
	enemy_hp -= 2
	ap -= 3
#	attack_btn.disabled = true
#	bite_btn.disabled = true

func _on_color_rect_gui_input(event):
	if attacking == true:
		if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
			enemy_hp -= player_attack
			$DamageCounter.position = $ColorRect.position + Vector2(50,200)
			damage_counter.text = str(player_attack)
			$AnimationPlayer2.play("show_damage")
			$AudioStreamPlayer.stream = load("res://assets/sounds/punch.wav")
			$AudioStreamPlayer.play()
#			await animation_player.animation_finished
			$ColorRect.modulate = Color(1, 1, 1)
			if not used_bite:
				bite_btn.disabled = false
			if not used_defense:
				defend_btn.disabled = false
			attacking = false
			turn_over.disabled = false
			sword.hide()
			Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)

func _on_color_rect_2_gui_input(event):
	if attacking == true:
		if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
			enemy2_hp -= player_attack
			$DamageCounter.position = $ColorRect2.position + Vector2(50,200)
			damage_counter.text = str(player_attack)
			$AnimationPlayer2.play("show_damage")
			$AudioStreamPlayer.stream = load("res://assets/sounds/punch.wav")
			$AudioStreamPlayer.play()
			$ColorRect2.modulate = Color(1, 1, 1)
			if not used_bite:
				bite_btn.disabled = false
			if not used_defense:
				defend_btn.disabled = false
			attacking = false
			turn_over.disabled = false
			sword.hide()
			Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)

func _on_color_rect_3_gui_input(event):
	if attacking == true:
		if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
			enemy3_hp -= player_attack
			damage_counter.text = str(player_attack)
			$DamageCounter.position = $ColorRect3.position + Vector2(50,200)
			$AnimationPlayer2.play("show_damage")
			$AudioStreamPlayer.stream = load("res://assets/sounds/punch.wav")
			$AudioStreamPlayer.play()
			$ColorRect3.modulate = Color(1, 1, 1)
			if not used_bite:
				bite_btn.disabled = false
			if not used_defense:
				defend_btn.disabled = false
			attacking = false
			turn_over.disabled = false
			sword.hide()
			Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)

func _on_color_rect_3_mouse_entered():
	if attacking:
		$ColorRect3.modulate = Color(0.2375391125679, 0.23753914237022, 0.2375391125679)

func _on_color_rect_3_mouse_exited():
	if attacking:
		$ColorRect3.modulate = Color(1, 1, 1)

func _on_color_rect_2_mouse_entered():
	if attacking:
		$ColorRect2.modulate = Color(0.2375391125679, 0.23753914237022, 0.2375391125679)

func _on_color_rect_2_mouse_exited():
	if attacking:
		$ColorRect2.modulate = Color(1, 1, 1)

func _on_color_rect_mouse_entered():
	if attacking:
		$ColorRect.modulate = Color(0.2375391125679, 0.23753914237022, 0.2375391125679)

func _on_color_rect_mouse_exited():
	if attacking:
		$ColorRect.modulate = Color(1, 1, 1)

func middle_attack():
	var rand_crit = randi_range(0,3)
	if rand_crit == 3:
		var critical = 5
		player_hp -= enemy_attack + critical
		damage_counter.set("theme_override_colors/font_color", Color(0.31000000238419, 0.05270000547171, 0.06556504964828))
		damage_counter.text = str(enemy_attack + critical)
	else: 
		if has_def:
			player_hp -= enemy_attack - def
		else:
			player_hp -= enemy_attack
		damage_counter.set("theme_override_colors/font_color", Color(1,1,1))
		damage_counter.text = str(enemy_attack)
	damage_counter.global_position = vesper.global_position + Vector2(60,150)
	$AnimationPlayer2.play("show_damage")
	$AudioStreamPlayer.stream = load("res://assets/sounds/knife_swing.wav")
	$AudioStreamPlayer.play()

func player_received_damage():
	damage_counter.set("theme_override_colors/font_color", Color(1,1,1))
	damage_counter.global_position = vesper.global_position + Vector2(30,150)
	damage_counter.text = "Miss"
	$AnimationPlayer2.play("show_damage")
