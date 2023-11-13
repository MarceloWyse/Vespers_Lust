extends Control

@onready var transitions = $Transitions
@onready var hospital_map = $HospitalMap
@onready var bar = $Bar
@onready var park = $Park
@onready var boutique = $Boutique
@onready var vesper_map = $VesperMap
@onready var hact_1 = $HospitalPanel/ActivityContainer/hact1
@onready var hact_2 = $HospitalPanel/ActivityContainer/hact2
@onready var hact_3 = $HospitalPanel/ActivityContainer/hact3
@onready var hospital_go_btn = $HospitalMap/HospitalGoBtn
@onready var hospital_panel = $HospitalPanel
@onready var bar_panel = $BarPanel
@onready var bar_go_btn = $Bar/BarGoBtn
@onready var baract_1 = $BarPanel/ActivityContainer/baract1
@onready var baract_2 = $BarPanel/ActivityContainer/baract2
@onready var baract_3 = $BarPanel/ActivityContainer/baract3
@onready var parkact_1 = $ParkPanel/ActivityContainer/parkact1
@onready var parkact_2 = $ParkPanel/ActivityContainer/parkact2
@onready var parkact_3 = $ParkPanel/ActivityContainer/parkact3
@onready var park_go_btn = $Park/ParkGoBtn
@onready var park_panel = $ParkPanel
@onready var boutiqueact_1 = $BoutiquePanel/ActivityContainer/boutiqueact1
@onready var boutiqueact_2 = $BoutiquePanel/ActivityContainer/boutiqueact2
@onready var boutiqueact_3 = $BoutiquePanel/ActivityContainer/boutiqueact3
@onready var boutiqueact_4 = $BoutiquePanel/ActivityContainer/boutiqueact4
@onready var boutique_panel = $BoutiquePanel
@onready var boutique_go_btn = $Boutique/BoutiqueGoBtn


func _ready():
	vesper_map.show()
	SaveManager.save.same_day = true
	transitions.fade_to_image()
	
	if SaveManager.save.bar["visited"] == true:
		bar_go_btn.disabled = true
	else:
		bar_go_btn.disabled = false
	
	if SaveManager.save.hospital["visited"] == true:
		hospital_go_btn.disabled = true
	else:
		hospital_go_btn.disabled = false
	
	if SaveManager.save.park["visited"] == true:
		park_go_btn.disabled = true
	else:
		park_go_btn.disabled = false
	
	if SaveManager.save.boutique["visited"] == true:
		boutique_go_btn.disabled = true
	else:
		boutique_go_btn.disabled = false
	
	#Hospital Activities
	if SaveManager.save.hospital["talk_act"] == false:
		hact_1.text = "- ???"
	else:
		hact_1.text = "- Talk"
	if SaveManager.save.hospital["steal_blood"] == false:
		hact_2.text = "- ???"
	else:
		hact_2.text = "- Steal blood"
	if SaveManager.save.hospital["buy_blood"] == false:
		hact_3.text = "- ???"
	else:
		hact_3.text = "- Buy blood"
	#Bar Activities
	if SaveManager.save.bar["talk_act"] == false:
		baract_1.text = "- ???"
	else:
		baract_1.text = "- Talk"
	if SaveManager.save.bar["drink"] == false:
		baract_2.text = "- ???"
	else:
		baract_2.text = "- Drink"
	if SaveManager.save.bar["information"] == false:
		baract_3.text = "- ???"
	else:
		baract_3.text = "- Information"
	#Park Activities
	if SaveManager.save.park["hunt"] == false:
		parkact_1.text = "- ???"
	else: parkact_1.text = "- Hunt"

	if SaveManager.save.park["find_male_ghoul"] == false:
		parkact_2.text = "- ???"
	else:
		parkact_2.text = "- Turn male ghoul"
		
	if SaveManager.save.park["find_female_ghoul"] == false:
		parkact_3.text = "- ???"
	else:
		parkact_3.text = "- Turn female Ghoul"
		
	#Boutique Activities
	if SaveManager.save.boutique["talk"] == false:
		boutiqueact_1.text = "- ???"
	else:
		boutiqueact_1.text = "- Talk"
		
	if SaveManager.save.boutique["shop"] == false:
		boutiqueact_2.text = "- ???"
	else:
		boutiqueact_2.text = "- Shop"
		
	if SaveManager.save.boutique["special_clothes"] == false:
		boutiqueact_3.text = "- ???"
	else:
		boutiqueact_3.text = "- Special clothes"
		
	if SaveManager.save.boutique["sex_toys"] == false:
		boutiqueact_4.text = "- ???"
	else:
		boutiqueact_4.text = "- Sex Toys"
	
func _process(delta):
	pass

func _on_back_btn_pressed():
	get_tree().change_scene_to_file("res://scenes/player_hub.tscn")

func _on_hospital_map_mouse_entered():
	hospital_map.modulate = Color(1, 1, 1)
	hospital_go_btn.show()
	hospital_panel.show()

func _on_hospital_map_mouse_exited():
	hospital_map.modulate = Color(0.50928616523743, 0.50928616523743, 0.50928616523743)
	hospital_go_btn.hide()
	hospital_panel.hide()
	
func _on_bar_mouse_entered():
	bar.modulate = Color(1, 1, 1)
	bar_go_btn.show()
	bar_panel.show()
	
func _on_bar_mouse_exited():
	bar.modulate = Color(0.50928616523743, 0.50928616523743, 0.50928616523743)
	bar_go_btn.hide()
	bar_panel.hide()
	
func _on_park_mouse_entered():
	park.modulate = Color(1, 1, 1)
	park_go_btn.show()
	park_panel.show()

func _on_park_mouse_exited():
	park.modulate = Color(0.50928616523743, 0.50928616523743, 0.50928616523743)
	park_go_btn.hide()
	park_panel.hide()

func _on_boutique_mouse_entered():
	boutique.modulate = Color(1, 1, 1)
	boutique_go_btn.show()
	boutique_panel.show()

func _on_boutique_mouse_exited():
	boutique.modulate = Color(0.50928616523743, 0.50928616523743, 0.50928616523743)
	boutique_go_btn.hide()
	boutique_panel.hide()

func _on_hospital_go_btn_pressed():
	SaveManager.save.hospital["visited"] = true
	get_tree().change_scene_to_file("res://scenes/hospital.tscn")

func _on_boutique_go_btn_pressed():
	SaveManager.save.boutique["visited"] = true
	get_tree().change_scene_to_file("res://scenes/boutique.tscn")

func _on_bar_go_btn_pressed():
	SaveManager.save.bar["visited"] = true
	get_tree().change_scene_to_file("res://scenes/bar.tscn")

func _on_park_go_btn_pressed():
	SaveManager.save.park["visited"] = true
	get_tree().change_scene_to_file("res://scenes/park.tscn")
