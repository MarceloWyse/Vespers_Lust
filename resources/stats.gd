extends Resource
class_name Stats

@export var prologue = {"took_gun" : false}

@export var vesper = {
"sexual" : false,
"virgin" : true, "anal_virgin" : true, 
"pussy_raped" : false, "ass_raped" : false, "cock_sucker" : false, "ass_licker" : false,
"pussy_fingered" : false, "ass_fingered" : false, 
"journalist" : true, "thief" : false, "prostitute" : false, "stripper" : false,
"tits_sucked" : false, "gives_handjobs" : false,
}


@export var items = {"bloodbag" : 0, "bloodflask" : 0}
@export var clothing = {"top" : null, "bottom" : null}

@export var bar_values = {"vit" : 1, "str" : 1, "int" : 1, "spd" : 1, "cha" : 1}
@export var player_status = {"sanity" : 50, "lewdness" : 1, "hunger" : 50 , "money" : 1200}
@export var day = 1
@export var visited_activities = {"masturbation": false, "prostitution" : false,
"sleep" : false, "studying" : false, "bartender" : false, "journalist" : false, "running" : false,
"speech" : false
}
@export var activity_level = {"bartending" : 0, "journalist" : 0}
@export var events = {"first_event" : false}
@export var masturbation_counter = 1
@export var masturbation_locks = {"boobs" : false}
@export var showed_boobs = {"deckard" : false, "josh" : false}
@export var testing = {"test" : false}
#prostitution vars:
@export var first_prostitution = true
@export var second_prostitution = false
@export var third_prostitution = false
@export var fourth_prostitution = false
@export var fifth_prostitution = false
@export var sixth_prostitution = false
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


@export var deckard_cg = {"deckard_1" : false, "deckard_2" : false, "deckard_3" : false, 
"deckard_4" : false, "deckard_5" : false, "deckard_6" : false, "deckard_7" : false, 
"deckard_8" : false, "deckard_9" : false, "deckard_10" : false, "deckard_10_11" : false,
"deckard_11" : false, "deckard_12" : false, "deckard_12_13" : false, "deckard_13" : false,
"deckard_14" : false, "deckard_15" : false, "deckard_16" : false, "deckard_17" : false, 
"deckard_18" : false, "deckard_19" : false, "deckard_20" : false, "deckard_21" : false, 
"deckard_22" : false, "deckard_23" : false, "deckard_24" : false, "deckard_25" : false, 
"deckard_26" : false, "deckard_26_27" : false, "deckard_27" : false, "deckard_28" : false,
"deckard_29" : false, "deckard_30" : false, "deckard_31" : false, "deckard_32" : false,
"deckard_33" : false, "deckard_34" : false, "deckard_35" : false, "deckard_36" : false,
"deckard_37" : false, "deckard_38" : false, "deckard_39" : false, "deckard_40" : false,
"deckard_41" : false, "deckard_42" : false, "deckard_43" : false, "deckard_44" : false,
"deckard_45" : false, "deckard_46" : false, "deckard_47" : false, "deckard_48" : false,
"deckard_49" : false, "deckard_50" : false, "deckard_51" : false, "deckard_52" : false,
"deckard_53" : false, "deckard_54" : false, "deckard_55" : false, "deckard_56" : false,
"deckard_57" : false, "deckard_58" : false, "deckard_59" : false, "deckard_60" : false,
"deckard_61" : false, "deckard_62" : false, "deckard_63" : false, "deckard_64" : false,
"deckard_65" : false, "deckard_66" : false, "deckard_67" : false, "deckard_68" : false,
"deckard_69" : false, "deckard_70" : false, "deckard_71" : false, "deckard_72" : false,
"deckard_73" : false, "deckard_74" : false, "deckard_75" : false, "deckard_76" : false,
"deckard_77" : false, "deckard_78" : false, "deckard_79" : false, "deckard_80" : false,
"deckard_81" : false, "deckard_82" : false, "deckard_83" : false, "deckard_84" : false,
"deckard_85" : false, "deckard_86" : false, "deckard_87" : false, "deckard_88" : false,
"deckard_89" : false, "deckard_90" : false, "deckard_91" : false, "deckard_92" : false,
"deckard_93" : false, "deckard_94" : false, "deckard_95" : false, "deckard_96" : false,
"deckard_97" : false, "deckard_98" : false, "deckard_99" : false, "deckard_100" : false,
"deckard_101" : false, "deckard_102" : false, "deckard_103" : false, "deckard_104" : false,
"deckard_105" : false, "deckard_106" : false, "deckard_107" : false, "deckard_108" : false,
"deckard_109" : false, "deckard_110" : false, "deckard_111" : false, "deckard_112" : false,
"deckard_113" : false, "deckard_114" : false, "deckard_115" : false, "deckard_116" : false,
"deckard_117" : false, "deckard_118" : false, "deckard_119" : false, "deckard_120" : false,
"deckard_121" : false, "deckard_122" : false, "deckard_123" : false, "deckard_124" : false,
"deckard_125" : false, "deckard_126" : false, "deckard_127" : false, "deckard_128" : false,
"deckard_129" : false, "deckard_130" : false, "deckard_131" : false, "deckard_132" : false,
"deckard_133" : false, "deckard_134" : false, "deckard_135" : false, "deckard_136" : false,
"deckard_137" : false, "deckard_138" : false, "deckard_139" : false, "deckard_140" : false,
}

@export var doug_cg = {"doug_1" : false, "doug_2" : false, "doug_3" : false, 
"doug_4" : false, "doug_5" : false, "doug_6" : false, "doug_7" : false, 
"doug_8" : false, "doug_9" : false, "doug_10" : false, "doug_10_11" : false,
"doug_11" : false, "doug_12" : false, "doug_12_13" : false, "doug_13" : false,
"doug_14" : false, "doug_15" : false, "doug_16" : false, "doug_17" : false, 
"doug_18" : false, "doug_19" : false, "doug_20" : false, "doug_21" : false, 
"doug_22" : false, "doug_23" : false, "doug_24" : false, "doug_25" : false, 
"doug_26" : false, "doug_26_27" : false, "doug_27" : false, "doug_28" : false,
"doug_29" : false, "doug_30" : false, "doug_31" : false, "doug_32" : false,
"doug_33" : false, "doug_34" : false, "doug_35" : false, "doug_36" : false,
"doug_37" : false, "doug_38" : false, "doug_39" : false, "doug_40" : false,
"doug_41" : false, "doug_42" : false, "doug_43" : false, "doug_44" : false,
"doug_45" : false, "doug_46" : false, "doug_47" : false, "doug_48" : false,
"doug_49" : false, "doug_50" : false, "doug_51" : false, "doug_52" : false,
"doug_53" : false, "doug_54" : false, "doug_55" : false, "doug_56" : false,
"doug_57" : false, "doug_58" : false, "doug_59" : false, "doug_60" : false,
"doug_61" : false, "doug_62" : false, "doug_63" : false, "doug_64" : false,
"doug_65" : false, "doug_66" : false, "doug_67" : false, "doug_68" : false,
"doug_69" : false, "doug_70" : false, "doug_71" : false, "doug_72" : false,
"doug_73" : false, "doug_74" : false, "doug_75" : false, "doug_76" : false,
"doug_77" : false, "doug_78" : false, "doug_79" : false, "doug_80" : false,
"doug_81" : false, "doug_82" : false, "doug_83" : false, "doug_84" : false,
"doug_85" : false, "doug_86" : false, "doug_87" : false, "doug_88" : false,
"doug_89" : false, "doug_90" : false, "doug_91" : false, "doug_92" : false,
"doug_93" : false, "doug_94" : false, "doug_95" : false, "doug_96" : false,
"doug_97" : false, "doug_98" : false, "doug_99" : false, "doug_100" : false,
"doug_101" : false, "doug_102" : false, "doug_103" : false, "doug_104" : false,
"doug_105" : false, "doug_106" : false, "doug_107" : false, "doug_108" : false,
"doug_109" : false, "doug_110" : false, "doug_111" : false, "doug_112" : false,
"doug_113" : false, "doug_114" : false, "doug_115" : false, "doug_116" : false,
"doug_117" : false, "doug_118" : false, "doug_119" : false, "doug_120" : false,
"doug_121" : false, "doug_122" : false, "doug_123" : false, "doug_124" : false,
"doug_125" : false, "doug_126" : false, "doug_127" : false, "doug_128" : false,
"doug_129" : false, "doug_130" : false, "doug_131" : false, "doug_132" : false,
"doug_133" : false, "doug_134" : false, "doug_135" : false, "doug_136" : false,
"doug_137" : false, "doug_138" : false, "doug_139" : false, "doug_140" : false,
}

@export var prostitution_cg = {"prostitution_1" : false, "prostitution_2" : false, "prostitution_3" : false, 
"prostitution_4" : false, "prostitution_5" : false, "prostitution_6" : false, "prostitution_7" : false, 
"prostitution_8" : false, "prostitution_9" : false, "prostitution_10" : false, 
"prostitution_11" : false, "prostitution_12" : false, "prostitution_13" : false,
"prostitution_14" : false, "prostitution_15" : false, "prostitution_16" : false, "prostitution_17" : false, 
"prostitution_18" : false, "prostitution_19" : false, "prostitution_20" : false, "prostitution_21" : false, 
"prostitution_22" : false, "prostitution_23" : false, "prostitution_24" : false, "prostitution_25" : false, 
"prostitution_26" : false, "prostitution_27" : false, "prostitution_28" : false, "prostitution_29" : false, 
"prostitution_30" : false, "prostitution_31" : false, "prostitution_32" : false, "prostitution_33" : false,
"prostitution_34" : false, "prostitution_35" : false, "prostitution_36" : false, "prostitution_37" : false, 
"prostitution_38" : false, "prostitution_39" : false, "prostitution_40" : false, "prostitution_41" : false, 
"prostitution_42" : false, "prostitution_43" : false, "prostitution_44" : false, "prostitution_45" : false, 
"prostitution_46" : false, "prostitution_47" : false, "prostitution_48" : false, "prostitution_49" : false, 
"prostitution_50" : false, "prostitution_51" : false, "prostitution_52" : false, "prostitution_53" : false, 
"prostitution_54" : false, "prostitution_55" : false, "prostitution_56" : false, "prostitution_57" : false, 
"prostitution_58" : false, "prostitution_59" : false, "prostitution_60" : false, "prostitution_61" : false, 
"prostitution_62" : false, "prostitution_63" : false, "prostitution_64" : false, "prostitution_65" : false, 
"prostitution_66" : false, "prostitution_67" : false, "prostitution_68" : false, "prostitution_69" : false, 
"prostitution_70" : false, "prostitution_71" : false, "prostitution_72" : false, "prostitution_73" : false, 
"prostitution_74" : false, "prostitution_75" : false, "prostitution_76" : false, "prostitution_77" : false, 
"prostitution_78" : false, "prostitution_79" : false, "prostitution_80" : false, "prostitution_81" : false, 
"prostitution_82" : false, "prostitution_83" : false, "prostitution_84" : false, "prostitution_85" : false, 
"prostitution_86" : false, "prostitution_87" : false, "prostitution_88" : false, "prostitution_89" : false,
"prostitution_90" : false, "prostitution_91" : false, "prostitution_92" : false, "prostitution_93" : false, 
"prostitution_94" : false, "prostitution_95" : false, "prostitution_96" : false, "prostitution_97" : false, 
"prostitution_98" : false, "prostitution_99" : false, "prostitution_100" : false, "prostitution_101" : false,
"prostitution_102" : false, "prostitution_103" : false, "prostitution_104" : false, "prostitution_105" : false,
"prostitution_106" : false, "prostitution_107" : false, "prostitution_108" : false, "prostitution_109" : false, 
"prostitution_110" : false, "prostitution_111" : false, "prostitution_112" : false, "prostitution_113" : false, 
"prostitution_114" : false, "prostitution_115" : false, "prostitution_116" : false, "prostitution_117" : false, 
"prostitution_118" : false, "prostitution_119" : false, "prostitution_120" : false, "prostitution_121" : false, 
"prostitution_122" : false, "prostitution_123" : false, "prostitution_124" : false, "prostitution_125" : false, 
"prostitution_126" : false, "prostitution_127" : false, "prostitution_128" : false, "prostitution_129" : false,
"prostitution_130" : false, "prostitution_131" : false, "prostitution_132" : false, "prostitution_133" : false, 
"prostitution_134" : false, "prostitution_135" : false, "prostitution_136" : false, "prostitution_137" : false, 
"prostitution_138" : false, "prostitution_139" : false, "prostitution_140" : false,
}

