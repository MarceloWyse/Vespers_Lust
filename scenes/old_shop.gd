extends Control

@onready var dialogue_label = $DialogBox/DialogueLabel as DialogueLabel
@onready var scene_bg = $SceneBg
@onready var talk_btn = $Options/TalkBtn
@onready var shop = $Options/Shop
@onready var be_her_pet = $Options/BeHerPet
@onready var lily = $Lily
@onready var shop_panel = $ShopPanel
@onready var money_label = $ShopPanel/Money/MoneyLabel
@onready var blood_bag_holding = $ShopPanel/Item1/BloodBagHolding
@onready var flask_holding_label = $ShopPanel/Item2/FlaskHoldingLabel
@onready var options = $Options
@onready var dagger_label = $ShopPanel/Item3/DaggerLabel

func _ready():
	if SaveManager.save.player_status["money"] <= 1000:
		dagger_label.text = "Dagger\n$1000"
	elif SaveManager.save.player_status["money"] >= 1000:
		dagger_label.text = "Dagger\n$%s" %str(SaveManager.save.player_status["money"] * 2)
		
	if SaveManager.save.old_shop["first_visit"]:
		scene_bg.texture = load("res://assets/img/old_street.jpg")
		dialogue_label.start_dialogue()
		SaveManager.save.old_shop["first_visit"] = false
		options.hide()
		SaveManager.save.old_shop["talk_act"] = true
	else:
		dialogue_label.jump_to(24)
		lily.show()
		options.show()
		dialogue_label.can_type = false
	
func _process(delta):
	
	if shop_panel.visible:
		dialogue_label.can_type = false
	
	flask_holding_label.text = str(SaveManager.save.items["bloodflask"])
	blood_bag_holding.text = str(SaveManager.save.items["bloodbag"])
	money_label.text = str(SaveManager.save.player_status["money"])
	
	if dialogue_label.message_id == 2:
		scene_bg.texture = load("res://assets/img/old_shop.png")
	
	if dialogue_label.message_id == 4:
		lily.show()
	
	if dialogue_label.message_id == 24:
		dialogue_label.can_type = false
		options.show()
	
	if dialogue_label.message_id == 32:
		dialogue_label.jump_to(24)
		dialogue_label.can_type = false
		options.show()
	
	if dialogue_label.message_id == 55:
		dialogue_label.jump_to(24)
		dialogue_label.can_type = false
		options.show()
	
	if dialogue_label.message_id == 65:
		dialogue_label.jump_to(24)
		dialogue_label.can_type = false
		options.show()
	
	if SaveManager.save.old_shop["ask_for_blood"] and SaveManager.save.player_status["lewdness"] >= 60:
		be_her_pet.disabled = false
		be_her_pet.text = "Become her pet"
		SaveManager.save.old_shop["be_her_pet"] = true
	
	if SaveManager.save.old_shop["ask_for_blood"]:
		shop.disabled = false
		shop.text = "Shop"
	
func _on_talk_btn_pressed():
	if not SaveManager.save.old_shop["talk_1"]:
		options.hide()
		dialogue_label.jump_to(26)
		dialogue_label.can_type = true
		SaveManager.save.old_shop["talk_1"] = true
	
	elif SaveManager.save.old_shop["talk_1"] and not SaveManager.save.old_shop["talk_2"]:
		options.hide()
		dialogue_label.jump_to(34)
		dialogue_label.can_type = true
		SaveManager.save.old_shop["talk_2"] = true
	
	elif SaveManager.save.old_shop["talk_2"]:
		SaveManager.save.old_shop["ask_for_blood"] = true 
		options.hide()
		dialogue_label.jump_to(58)
		dialogue_label.can_type = true
		SaveManager.save.old_shop["shop"] = true

func _on_go_home_pressed():
	Events.change_scene_to_path.emit("res://scenes/player_hub.tscn")

func _on_be_her_pet_pressed():
	Events.change_scene_to_path.emit("res://scenes/lily_sex_dungeon.tscn")

func _on_close_btn_pressed():
#	dialogue_label.can_type = false
	dialogue_label.message_id = 55
	shop_panel.hide()
	options.show()

func _on_buy_1_btn_pressed():
	if SaveManager.save.player_status["money"] >= 500:
		SaveManager.save.player_status["money"] -= 500
		SaveManager.save.items["bloodbag"] += 1

func _on_buy_2_btn_2_pressed():
	if SaveManager.save.player_status["money"] >= 300:
		SaveManager.save.player_status["money"] -= 300
		SaveManager.save.items["bloodflask"] += 1

func _on_shop_pressed():
	dialogue_label.jump_to(66)
	dialogue_label.can_type = false
	options.hide()
	shop_panel.show()

func _on_buy_3_btn_2_pressed():
	var rand = randi_range(1,5)
	if rand == 1:
		dialogue_label.jump_to(68)
	if rand == 2:
		dialogue_label.jump_to(69)
	if rand == 3:
		dialogue_label.jump_to(70)
	if rand == 4:
		dialogue_label.jump_to(71)
	if rand == 5:
		dialogue_label.jump_to(72)
