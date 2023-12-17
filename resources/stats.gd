extends Resource
class_name Stats

@export var items = {"bloodbag" : 0, "bloodflask" : 0}
@export var clothing = {"top" : null, "bottom" : null}
@export var vesper = {"virgin" : true, "anal_virgin" : true}
@export var bar_values = {"vit" : 1, "str" : 1, "int" : 1, "spd" : 1, "cha" : 1}
@export var player_status = {"sanity" : 50, "lewdness" : 5, "hunger" : 50 , "money" : 500}
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
@export var anal_whore = false
@export var have_fredericks_number = false
@export var have_kates_number = false

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
"blowjob" : false, "anal" : false, "showed_tits" : false, "showed_butt" : false, "showed_pussy" : false
}

@export var lobo = {"information_available" : false, "met_lobo" : false, "asked_for_blood" : false}
@export var lily = {"intro_dungeon" : true}

@export var prologue_cg = {"prologue_1" : false, "prologue_2" : false, "prologue_3" : false, 
"prologue_4" : false, "prologue_5" : false, "prologue_6" : false, "prologue_7" : false, 
"prologue_8" : false, "prologue_9" : false, "prologue_10" : false, "prologue_10_11" : false,
"prologue_11" : false, "prologue_12" : false, "prologue_12_13" : false, "prologue_13" : false,
"prologue_14" : false, "prologue_15" : false, "prologue_16" : false, "prologue_17" : false, 
"prologue_18" : false, "prologue_19" : false, "prologue_20" : false, "prologue_21" : false, 
"prologue_22" : false, "prologue_23" : false, "prologue_24" : false, "prologue_25" : false, 
"prologue_26" : false, "prologue_26_27" : false, "prologue_27" : false, "prologue_28" : false,
"prologue_29" : false, "prologue_30" : false, "prologue_31" : false, "prologue_32" : false
}
