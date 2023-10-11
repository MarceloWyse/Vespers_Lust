extends Control

@onready var settings = $Settings
@onready var vit_bar = $AttributesPanel/AttributesGrid/VitBar
@onready var str_bar = $AttributesPanel/AttributesGrid/StrBar
@onready var int_bar = $AttributesPanel/AttributesGrid/IntBar
@onready var speed_bar = $AttributesPanel/AttributesGrid/SpeedBar
@onready var cha_bar = $AttributesPanel/AttributesGrid/ChaBar
@onready var vit_texture = $AttributesPanel/AttributesGrid/VitTexture
@onready var str_texture = $AttributesPanel/AttributesGrid/StrTexture
@onready var int_texture = $AttributesPanel/AttributesGrid/IntTexture
@onready var speed_texture = $AttributesPanel/AttributesGrid/SpeedTexture
@onready var cha_texture = $AttributesPanel/AttributesGrid/ChaTexture
@onready var lewdness_label = $StatusGrid/LewdnessLabel
@onready var lewdness_texture = $StatusGrid/LewdnessTexture
@onready var activities_panel = $ScheduleButton/ActivitiesPanel
@onready var texture_rect_3 = $ScheduleButton/ActivitiesPanel/GridContainer/TextureRect3
@onready var texture_rect = $ScheduleButton/ActivitiesPanel/GridContainer/TextureRect
@onready var work = $ScheduleButton/ActivitiesPanel/Activities/ActivitiesContainer/Work
@onready var barista = $ScheduleButton/ActivitiesPanel/Activities/ActivitiesContainer/Barista
@onready var park = $ScheduleButton/ActivitiesPanel/Activities/ActivitiesContainer/Park
@onready var sleep = $ScheduleButton/ActivitiesPanel/Activities/ActivitiesContainer/Sleep
@onready var hunt = $ScheduleButton/ActivitiesPanel/Activities/ActivitiesContainer/Hunt
@onready var run = $ScheduleButton/ActivitiesPanel/Activities/ActivitiesContainer/Run
@onready var swim = $ScheduleButton/ActivitiesPanel/Activities/ActivitiesContainer/Swim
@onready var boxing = $ScheduleButton/ActivitiesPanel/Activities/ActivitiesContainer/Boxing
@onready var drink = $ScheduleButton/ActivitiesPanel/Activities/ActivitiesContainer/Drink
@onready var masturbation = $ScheduleButton/ActivitiesPanel/Activities/ActivitiesContainer/Masturbation
@onready var prostitution = $ScheduleButton/ActivitiesPanel/Activities/ActivitiesContainer/Prostitution
@onready var hospital = $ScheduleButton/ActivitiesPanel/Activities/ActivitiesContainer/Hospital
@onready var boutique = $ScheduleButton/ActivitiesPanel/Activities/ActivitiesContainer/Boutique
@onready var weapons_shop = $ScheduleButton/ActivitiesPanel/Activities/ActivitiesContainer/WeaponsShop
@onready var speaking = $ScheduleButton/ActivitiesPanel/Activities/ActivitiesContainer/Speaking
@onready var bar = $ScheduleButton/ActivitiesPanel/Activities/ActivitiesContainer/Bar
@onready var gamble = $ScheduleButton/ActivitiesPanel/Activities/ActivitiesContainer/Gamble
@onready var apply = $ScheduleButton/ActivitiesPanel/Apply
@onready var weather_texture = $Calendar/WeatherTexture

@export var e_texture : Texture 
@export var d_texture : Texture 
@export var c_texture : Texture
@export var b_texture : Texture 
@export var a_texture : Texture 
@export var lewdness_0 : Texture
@export var lewdness_1 : Texture
@export var lewdness_2 : Texture
@export var lewdness_3 : Texture
@export var lewdness_4 : Texture
@export var sanity_0 : Texture
@export var sanity_1 : Texture
@export var sanity_2 : Texture
@export var sanity_3 : Texture
@export var sanity_4 : Texture
@onready var day_label = $Calendar/DayLabel

@onready var hunger_label = $Hunger/HungerLabel
@onready var hunger_bar = $Hunger/HungerBar
@onready var sanity_texture = $StatusGrid/SanityTexture
@onready var sanity_label = $StatusGrid/SanityLabel
@onready var grid_container = $ScheduleButton/ActivitiesPanel/GridContainer
@onready var study_2 = $ScheduleButton/ActivitiesPanel/Activities/ActivitiesContainer/Study2
@onready var texture_rect_2 = $ScheduleButton/ActivitiesPanel/GridContainer/TextureRect2

var hunger = SaveManager.save.player_status["hunger"]
var money = SaveManager.save.player_status["money"]
var lewdness = SaveManager.save.player_status["lewdness"]
var sanity = SaveManager.save.player_status["sanity"]
var str = SaveManager.save.bar_values["str"]
var vit = SaveManager.save.bar_values["vit"]
var intelligence = SaveManager.save.bar_values["int"]
var spd = SaveManager.save.bar_values["spd"]
var cha = SaveManager.save.bar_values["cha"]
var cont
var weather = ["cloudy", "rainy", "sunny"]
var can_go_out = true
var day = SaveManager.save.day

func _ready():
	var chosen_weather = weather.pick_random()
	if chosen_weather == "sunny":
		texture_rect.texture = sleep.texture_normal
		can_go_out = false
		weather_texture.texture = load("res://assets/img/sunny.webp")
	if chosen_weather == "cloudy":
		weather_texture.texture = load("res://assets/img/cloudy.png")
	if chosen_weather == "rainy":
		weather_texture.texture = load("res://assets/img/rainy.png")
	day_label.text = "March %s - %s" %[day, chosen_weather]
	
	SceneTracker.scene_1 = null
	SceneTracker.scene_2 = null
	SceneTracker.scene_3 = null
	hunger_bar.value = hunger
	vit_bar.value = vit
	str_bar.value = str
	int_bar.value = intelligence
	speed_bar.value = spd
	cha_bar.value = cha

func _process(delta):
	if texture_rect.texture == null or texture_rect_2.texture == null \
	or texture_rect_3.texture == null:
		apply.disabled = true
	elif texture_rect.texture != null and texture_rect_2.texture != null \
	and texture_rect_3.texture != null:
		apply.disabled = false
	
	
	if sanity >= 0 and not sanity >= 20:
		sanity_texture.texture = sanity_0
		sanity_label.text = "Sanity: 20\nInsane"
	if sanity >= 20 and not sanity >= 40:
		sanity_texture.texture = sanity_1
		sanity_label.text = "sanity: 40\nDelirious"
	if sanity >= 40 and not sanity >= 60:
		sanity_texture.texture = sanity_2
		sanity_label.text = "sanity: 60\nUnhinged"
	if sanity >= 60 and not sanity >= 80:
		sanity_texture.texture = sanity_3
		sanity_label.text = "sanity: 80\nShaken"
	if sanity >= 80 and not sanity >= 100:
		sanity_texture.texture = sanity_4
		sanity_label.text = "sanity: 100\nNormal"
	
	if lewdness >= 0 and not lewdness >= 20:
		lewdness_texture.texture = lewdness_0
		lewdness_label.text = "Lewdness: 0\nInnocent"
	if lewdness >= 20 and not lewdness >= 40:
		lewdness_texture.texture = lewdness_1
		lewdness_label.text = "Lewdness: 1\nNaughty"
	if lewdness >= 40 and not lewdness >= 60:
		lewdness_texture.texture = lewdness_2
		lewdness_label.text = "Lewdness: 2\nLustful"
	if lewdness >= 60 and not lewdness >= 80:
		lewdness_texture.texture = lewdness_3
		lewdness_label.text = "Lewdness: 3\nIndecent"
	if lewdness >= 80 and not lewdness >= 100:
		lewdness_texture.texture = lewdness_4
		lewdness_label.text = "Lewdness: 4\nLascivious"
		
	if hunger_bar.value >= 0 and not hunger_bar.value >= 30:
		hunger_label.text = "Satisfied"
	if hunger_bar.value >= 30 and not hunger_bar.value >= 50:
		hunger_label.text = "Hungry"
	if hunger_bar.value >= 50 and not hunger_bar.value >= 80:
		hunger_label.text = "Starving"
	if hunger_bar.value >= 80 and not hunger_bar.value >= 100:
		hunger_label.text = "Famine"
	
	if vit_bar.value >= 0 and not vit_bar.value >= 20:
		vit_texture.texture = e_texture
	if vit_bar.value >= 20 and not vit_bar.value >= 30:
		vit_texture.texture = d_texture
	if vit_bar.value >= 40 and not vit_bar.value >= 60:
		vit_texture.texture = c_texture
	if vit_bar.value >= 60 and not vit_bar.value >= 80:
		vit_texture.texture = b_texture
	if vit_bar.value >= 80 and not vit_bar.value >= 100:
		vit_texture.texture = a_texture
	if str_bar.value >= 0 and not str_bar.value >= 20:
		str_texture.texture = e_texture
	if str_bar.value >= 20 and not str_bar.value >= 30:
		str_texture.texture = d_texture
	if str_bar.value >= 40 and not str_bar.value >= 60:
		str_texture.texture = c_texture
	if str_bar.value >= 60 and not str_bar.value >= 80:
		str_texture.texture = b_texture
	if str_bar.value >= 80 and not str_bar.value >= 100:
		str_texture.texture = a_texture
	if int_bar.value >= 0 and not int_bar.value >= 20:
		int_texture.texture = e_texture
	if int_bar.value >= 20 and not int_bar.value >= 30:
		int_texture.texture = d_texture
	if int_bar.value >= 40 and not int_bar.value >= 60:
		int_texture.texture = c_texture
	if int_bar.value >= 60 and not int_bar.value >= 80:
		int_texture.texture = b_texture
	if int_bar.value >= 80 and not int_bar.value >= 100:
		int_texture.texture = a_texture
	if speed_bar.value >= 0 and not speed_bar.value >= 20:
		speed_texture.texture = e_texture
	if speed_bar.value >= 20 and not speed_bar.value >= 30:
		speed_texture.texture = d_texture
	if speed_bar.value >= 40 and not speed_bar.value >= 60:
		speed_texture.texture = c_texture
	if speed_bar.value >= 60 and not speed_bar.value >= 80:
		speed_texture.texture = b_texture
	if speed_bar.value >= 80 and not speed_bar.value >= 100:
		speed_texture.texture = a_texture
	if cha_bar.value >= 0 and not cha_bar.value >= 20:
		cha_texture.texture = e_texture
	if cha_bar.value >= 20 and not cha_bar.value >= 30:
		cha_texture.texture = d_texture
	if cha_bar.value >= 40 and not cha_bar.value >= 60:
		cha_texture.texture = c_texture
	if cha_bar.value >= 60 and not cha_bar.value >= 80:
		cha_texture.texture = b_texture
	if cha_bar.value >= 80 and not cha_bar.value >= 100:
		cha_texture.texture = a_texture

func _on_gear_button_pressed():
	settings.visible = !settings.visible

func _on_test_button_pressed():
	if vit_bar.value != 100:
		vit_bar.value += 10

func _on_test_button_2_pressed():
	if str_bar.value != 100:
		str_bar.value += 10

func _on_test_button_3_pressed():
	if int_bar.value != 100:
		int_bar.value += 10

func _on_test_button_4_pressed():
	if speed_bar.value != 100:
		speed_bar.value += 10
		
func _on_test_button_5_pressed():
	if cha_bar.value != 100:
		cha_bar.value += 10

func _on_dec_button_0_pressed():
	if vit_bar.value > 0:
		vit_bar.value -= 10

func _on_dec_button_1_pressed():
	if str_bar.value > 0:
		str_bar.value -= 10
		
func _on_dec_button_2_pressed():
	if int_bar.value > 0:
		int_bar.value -= 10

func _on_dec_button_3_pressed():
	if speed_bar.value > 0:
		speed_bar.value -= 10

func _on_dec_button_4_pressed():
	if cha_bar.value > 0:
		cha_bar.value -= 10

func _exit_tree():
	SaveManager.save.player_status["hunger"] = hunger_bar.value
	SceneTracker.scene_1 = null

func _on_increase_hunger_pressed():
	hunger_bar.value += 10

func _on_decrease_hunger_pressed():
	hunger_bar.value -= 10

func _on_increase_lewdness_pressed():
	if lewdness < 100:
		lewdness += 10
		
func _on_increase_sanity_pressed():
	if sanity < 100:
		sanity += 10

func _on_decrease_sanity_pressed():
	if sanity > 0:
		sanity -= 10

func _on_save_pressed():
	SaveManager.save.player_status["hunger"] = hunger_bar.value
#	SaveManager.save.player_status["money"]
	SaveManager.save.player_status["lewdness"] = lewdness
	SaveManager.save.player_status["sanity"] = sanity
	SaveManager.save.bar_values["str"] = str_bar.value
	SaveManager.save.bar_values["vit"] = vit_bar.value
	SaveManager.save.bar_values["int"] = int_bar.value
	SaveManager.save.bar_values["spd"] = speed_bar.value
	SaveManager.save.bar_values["cha"] = cha_bar.value
	SaveManager.save_game()

func _on_schedule_button_pressed():
	activities_panel.visible = !activities_panel.visible

func _on_study_2_pressed():
	for child in grid_container.get_children():
		if child.texture == null:
			child.texture = study_2.texture_normal
			return

func _on_texture_rect_3_gui_input(event):
	if event.is_action_pressed("right_click"):
		texture_rect_3.texture = null

func _on_texture_rect_2_gui_input(event):
	if event.is_action_pressed("right_click"):
		texture_rect_2.texture = null
		
func _on_texture_rect_gui_input(event):
	if event.is_action_pressed("right_click") and can_go_out:
		texture_rect.texture = null

func _on_cancel_pressed():
	if can_go_out:
		for child in grid_container.get_children():
			child.texture = null
	else:
		texture_rect_2.texture = null
		texture_rect_3.texture = null

func _on_work_pressed():
	for child in grid_container.get_children():
		if child.texture == null:
			child.texture = work.texture_normal
			return
func _on_barista_pressed():
	for child in grid_container.get_children():
		if child.texture == null:
			child.texture = barista.texture_normal
			return

func _on_park_pressed():
	for child in grid_container.get_children():
		if child.texture == null:
			child.texture = park.texture_normal
			return
			
func _on_sleep_pressed():
	for child in grid_container.get_children():
		if child.texture == null:
			child.texture = sleep.texture_normal
			return
			
func _on_hunt_pressed():
	for child in grid_container.get_children():
		if child.texture == null:
			child.texture = hunt.texture_normal
			return
			
func _on_run_pressed():
	for child in grid_container.get_children():
		if child.texture == null:
			child.texture = run.texture_normal
			return
			
func _on_swim_pressed():
	for child in grid_container.get_children():
		if child.texture == null:
			child.texture = swim.texture_normal
			return
			
func _on_boxing_pressed():
	for child in grid_container.get_children():
		if child.texture == null:
			child.texture = boxing.texture_normal
			return
			
func _on_drink_pressed():
	for child in grid_container.get_children():
		if child.texture == null:
			child.texture = drink.texture_normal
			return

func _on_masturbation_pressed():
	for child in grid_container.get_children():
		if child.texture == null:
			child.texture = masturbation.texture_normal
			return

func _on_prostitution_pressed():
	for child in grid_container.get_children():
		if child.texture == null:
			child.texture = prostitution.texture_normal
			return
			
func _on_hospital_pressed():
	for child in grid_container.get_children():
		if child.texture == null:
			child.texture = hospital.texture_normal
			return
			
func _on_boutique_pressed():
	for child in grid_container.get_children():
		if child.texture == null:
			child.texture = boutique.texture_normal
			return
			
func _on_weapons_shop_pressed():
	for child in grid_container.get_children():
		if child.texture == null:
			child.texture = weapons_shop.texture_normal
			return
			
func _on_speaking_pressed():
	for child in grid_container.get_children():
		if child.texture == null:
			child.texture = speaking.texture_normal
			return
			
func _on_bar_pressed():
	for child in grid_container.get_children():
		if child.texture == null:
			child.texture = bar.texture_normal
			return
			
func _on_gamble_pressed():
	for child in grid_container.get_children():
		if child.texture == null:
			child.texture = gamble.texture_normal
			return

func _on_apply_pressed():
	for child in grid_container.get_children():
		if child.texture != null:
			if child.name == "TextureRect":
				if child.texture.resource_path.contains("studying"):
					SceneTracker.scene_1 = load("res://scenes/studying.tscn")
				if child.texture.resource_path.contains("work"):
					SceneTracker.scene_1 = load("res://scenes/work.tscn")
				if child.texture.resource_path.contains("barista"):
					SceneTracker.scene_1 = load("res://scenes/barista.tscn")
				if child.texture.resource_path.contains("barista"):
					SceneTracker.scene_1 = load("res://scenes/barista.tscn")
				if child.texture.resource_path.contains("park"):
					SceneTracker.scene_1 = load("res://scenes/park.tscn")
				if child.texture.resource_path.contains("sleep"):
					SceneTracker.scene_1 = load("res://scenes/sleep.tscn")
				if child.texture.resource_path.contains("hunt"):
					SceneTracker.scene_1 = load("res://scenes/hunt.tscn")
				if child.texture.resource_path.contains("jogging"):
					SceneTracker.scene_1 = load("res://scenes/run.tscn")
				if child.texture.resource_path.contains("swim"):
					SceneTracker.scene_1 = load("res://scenes/swim.tscn")
				if child.texture.resource_path.contains("boxing"):
					SceneTracker.scene_1 = load("res://scenes/box.tscn")
				if child.texture.resource_path.contains("liquor"):
					SceneTracker.scene_1 = load("res://scenes/drink.tscn")
				if child.texture.resource_path.contains("masturbation"):
					SceneTracker.scene_1 = load("res://scenes/masturbation.tscn")
				if child.texture.resource_path.contains("prostitution"):
					SceneTracker.scene_1 = load("res://scenes/prostitution.tscn")
				if child.texture.resource_path.contains("hospital"):
					SceneTracker.scene_1 = load("res://scenes/hospital.tscn")
				if child.texture.resource_path.contains("boutique"):
					SceneTracker.scene_1 = load("res://scenes/boutique.tscn")
				if child.texture.resource_path.contains("knife"):
					SceneTracker.scene_1 = load("res://scenes/weapons.tscn")
				if child.texture.resource_path.contains("mirror"):
					SceneTracker.scene_1 = load("res://scenes/speech.tscn")
				if child.texture.resource_path.contains("bar-counter"):
					SceneTracker.scene_1 = load("res://scenes/bar.tscn")
				if child.texture.resource_path.contains("gamble"):
					SceneTracker.scene_1 = load("res://scenes/gamble.tscn")
			if child.name == "TextureRect2":
				if child.texture.resource_path.contains("studying"):
					SceneTracker.scene_2 = load("res://scenes/studying.tscn")
				if child.texture.resource_path.contains("work"):
					SceneTracker.scene_2 = load("res://scenes/work.tscn")
				if child.texture.resource_path.contains("barista"):
					SceneTracker.scene_2 = load("res://scenes/barista.tscn")
				if child.texture.resource_path.contains("barista"):
					SceneTracker.scene_2 = load("res://scenes/barista.tscn")
				if child.texture.resource_path.contains("park"):
					SceneTracker.scene_2 = load("res://scenes/park.tscn")
				if child.texture.resource_path.contains("sleep"):
					SceneTracker.scene_2 = load("res://scenes/sleep.tscn")
				if child.texture.resource_path.contains("hunt"):
					SceneTracker.scene_2 = load("res://scenes/hunt.tscn")
				if child.texture.resource_path.contains("jogging"):
					SceneTracker.scene_2 = load("res://scenes/run.tscn")
				if child.texture.resource_path.contains("swim"):
					SceneTracker.scene_2 = load("res://scenes/swim.tscn")
				if child.texture.resource_path.contains("boxing"):
					SceneTracker.scene_2 = load("res://scenes/box.tscn")
				if child.texture.resource_path.contains("liquor"):
					SceneTracker.scene_2 = load("res://scenes/drink.tscn")
				if child.texture.resource_path.contains("masturbation"):
					SceneTracker.scene_2 = load("res://scenes/masturbation.tscn")
				if child.texture.resource_path.contains("prostitution"):
					SceneTracker.scene_2 = load("res://scenes/prostitution.tscn")
				if child.texture.resource_path.contains("hospital"):
					SceneTracker.scene_2 = load("res://scenes/hospital.tscn")
				if child.texture.resource_path.contains("boutique"):
					SceneTracker.scene_2 = load("res://scenes/boutique.tscn")
				if child.texture.resource_path.contains("knife"):
					SceneTracker.scene_2 = load("res://scenes/weapons.tscn")
				if child.texture.resource_path.contains("mirror"):
					SceneTracker.scene_2 = load("res://scenes/speech.tscn")
				if child.texture.resource_path.contains("bar-counter"):
					SceneTracker.scene_2 = load("res://scenes/bar.tscn")
				if child.texture.resource_path.contains("gamble"):
					SceneTracker.scene_2 = load("res://scenes/gamble.tscn")
			if child.name == "TextureRect3":
				if child.texture.resource_path.contains("studying"):
					SceneTracker.scene_3 = load("res://scenes/studying.tscn")
				if child.texture.resource_path.contains("work"):
					SceneTracker.scene_3 = load("res://scenes/work.tscn")
				if child.texture.resource_path.contains("barista"):
					SceneTracker.scene_3 = load("res://scenes/barista.tscn")
				if child.texture.resource_path.contains("barista"):
					SceneTracker.scene_3 = load("res://scenes/barista.tscn")
				if child.texture.resource_path.contains("park"):
					SceneTracker.scene_3 = load("res://scenes/park.tscn")
				if child.texture.resource_path.contains("sleep"):
					SceneTracker.scene_3 = load("res://scenes/sleep.tscn")
				if child.texture.resource_path.contains("hunt"):
					SceneTracker.scene_3 = load("res://scenes/hunt.tscn")
				if child.texture.resource_path.contains("jogging"):
					SceneTracker.scene_3 = load("res://scenes/run.tscn")
				if child.texture.resource_path.contains("swim"):
					SceneTracker.scene_3 = load("res://scenes/swim.tscn")
				if child.texture.resource_path.contains("boxing"):
					SceneTracker.scene_3 = load("res://scenes/box.tscn")
				if child.texture.resource_path.contains("liquor"):
					SceneTracker.scene_3 = load("res://scenes/drink.tscn")
				if child.texture.resource_path.contains("masturbation"):
					SceneTracker.scene_3 = load("res://scenes/masturbation.tscn")
				if child.texture.resource_path.contains("prostitution"):
					SceneTracker.scene_3 = load("res://scenes/prostitution.tscn")
				if child.texture.resource_path.contains("hospital"):
					SceneTracker.scene_3 = load("res://scenes/hospital.tscn")
				if child.texture.resource_path.contains("boutique"):
					SceneTracker.scene_3 = load("res://scenes/boutique.tscn")
				if child.texture.resource_path.contains("knife"):
					SceneTracker.scene_3 = load("res://scenes/weapons.tscn")
				if child.texture.resource_path.contains("mirror"):
					SceneTracker.scene_3 = load("res://scenes/speech.tscn")
				if child.texture.resource_path.contains("bar-counter"):
					SceneTracker.scene_3 = load("res://scenes/bar.tscn")
				if child.texture.resource_path.contains("gamble"):
					SceneTracker.scene_3 = load("res://scenes/gamble.tscn")
	get_tree().change_scene_to_packed(SceneTracker.scene_1)

