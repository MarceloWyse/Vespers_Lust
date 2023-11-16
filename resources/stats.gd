extends Resource
class_name Stats

@export var clothing = {"top" : null, "bottom" : null}

@export var bar_values = {"vit" : 1, "str" : 1, "int" : 1, "spd" : 1, "cha" : 1}
@export var player_status = {"sanity" : 50, "lewdness" : 100, "hunger" : 50 , "money" : 0}
@export var day = 1
@export var visited_activities = {"masturbation": false, "prostitution" : false,
"sleep" : false, "studying" : false, "bartender" : false, "journalist" : false, "running" : false,
"speech" : false
}
@export var activity_level = {"bartending" : 0, "journalist" : 0}

#prostitution vars:
@export var first_prostitution = true
@export var second_prostitution = false
@export var third_prostitution = false
@export var fourth_prostitution = false
@export var fifth_prostitution = false
@export var sixth_prostitution = false
@export var prostitute = false
@export var killed_fred = false
@export var anal_whore = false

#innocent, pure, naughty, sassy, depraved, lustful, lewd, lascivous
#management
@export var same_day = false
@export var weather = []

#hospital variables
@export var hospital = {"talk_act" : false, "steal_blood" : false, "visited" : false, "steal_btn_disabled" : true}
@export var bar = {"talk_act" : false, "drink" : false, "information" : false, "visited" : false}
@export var park = {"hunt" : false, "find_male_ghoul" : false, "find_female_ghoul" : false, "visited" : false}
@export var boutique = {"talk" : false, "shop" : false, "special_clothes" : false, "sex_toys" : false, "visited" : false}
@export var old_shop = {"available" : false, "talk_act" : false, "shop" : false, "be_her_pet" : false, "visited" : false,
"talk_1" : false, "talk_2" : false, "ask_for_blood" : false, "first_visit" : true}

@export var deckard = {"stolen_blood" : false, "deckard_repetition" : false, "lapdance" : false, "handjob" : false, "titsout" : false, 
"blowjob" : false, "anal" : false
}

@export var lobo = {"information_available" : false, "met_lobo" : false, "asked_for_blood" : false}
