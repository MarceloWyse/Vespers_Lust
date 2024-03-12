extends Control

@onready var dialogue_label = $DialogBox/DialogueLabel
var scene_finished
@onready var scene_bg = $SceneBg

func _ready():
#	SaveManager.save.third_prostitution = true
	
	if not SaveManager.save.third_prostitution:
		dialogue_label.start_dialogue()
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/prostitution_GC_1.png")
		if SaveManager.save.prostitution_cg["prostitution_42"] == false:
			SaveManager.save.prostitution_cg["prostitution_42"] = true
		SaveManager.save.third_prostitution = true
	elif SaveManager.save.third_prostitution:
		dialogue_label.jump_to(202)

func _process(delta):
	
	if dialogue_label.message_id == 3:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/prostitution_GC_2.png")
		if SaveManager.save.prostitution_cg["prostitution_43"] == false:
			SaveManager.save.prostitution_cg["prostitution_43"] = true
	if dialogue_label.message_id == 7:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/prostitution_GC_3.png")
		if SaveManager.save.prostitution_cg["prostitution_44"] == false:
			SaveManager.save.prostitution_cg["prostitution_44"] = true
	if dialogue_label.message_id == 11:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/prostitution_GC_4.png")
		if SaveManager.save.prostitution_cg["prostitution_45"] == false:
			SaveManager.save.prostitution_cg["prostitution_45"] = true
	if dialogue_label.message_id == 12:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/prostitution_GC_5.png")
		if SaveManager.save.prostitution_cg["prostitution_46"] == false:
			SaveManager.save.prostitution_cg["prostitution_46"] = true
	if dialogue_label.message_id == 13:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/prostitution_GC_6.png")
		if SaveManager.save.prostitution_cg["prostitution_47"] == false:
			SaveManager.save.prostitution_cg["prostitution_47"] = true
	if dialogue_label.message_id == 16:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/prostitution_GC_7.png")
		if SaveManager.save.prostitution_cg["prostitution_48"] == false:
			SaveManager.save.prostitution_cg["prostitution_48"] = true
	if dialogue_label.message_id == 19:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/prostitution_GC_8.png")
		if SaveManager.save.prostitution_cg["prostitution_49"] == false:
			SaveManager.save.prostitution_cg["prostitution_49"] = true
	if dialogue_label.message_id == 22:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/prostitution_GC_9.png")
		if SaveManager.save.prostitution_cg["prostitution_50"] == false:
			SaveManager.save.prostitution_cg["prostitution_50"] = true
	if dialogue_label.message_id == 26:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/prostitution_GC_10.png")
		if SaveManager.save.prostitution_cg["prostitution_51"] == false:
			SaveManager.save.prostitution_cg["prostitution_51"] = true
	if dialogue_label.message_id == 29:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/prostitution_GC_11.png")
		if SaveManager.save.prostitution_cg["prostitution_52"] == false:
			SaveManager.save.prostitution_cg["prostitution_52"] = true
	if dialogue_label.message_id == 31:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/prostitution_GC_12.png")
		if SaveManager.save.prostitution_cg["prostitution_53"] == false:
			SaveManager.save.prostitution_cg["prostitution_53"] = true
	if dialogue_label.message_id == 33:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/prostitution_GC_13_2.png")
		if SaveManager.save.prostitution_cg["prostitution_54"] == false:
			SaveManager.save.prostitution_cg["prostitution_54"] = true
	if dialogue_label.message_id == 35:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/prostitution_GC_14_2.png")
		if SaveManager.save.prostitution_cg["prostitution_55"] == false:
			SaveManager.save.prostitution_cg["prostitution_55"] = true
	if dialogue_label.message_id == 38:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/prostitution_GC_15.png")
		if SaveManager.save.prostitution_cg["prostitution_56"] == false:
			SaveManager.save.prostitution_cg["prostitution_56"] = true
	if dialogue_label.message_id == 41:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/prostitution_GC_16.png")
		if SaveManager.save.prostitution_cg["prostitution_57"] == false:
			SaveManager.save.prostitution_cg["prostitution_57"] = true
	if dialogue_label.message_id == 46:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/prostitution_GC_17.png")
		if SaveManager.save.prostitution_cg["prostitution_58"] == false:
			SaveManager.save.prostitution_cg["prostitution_58"] = true
	if dialogue_label.message_id == 47:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/prostitution_GC_18.png")
		if SaveManager.save.prostitution_cg["prostitution_59"] == false:
			SaveManager.save.prostitution_cg["prostitution_59"] = true
	if dialogue_label.message_id == 53:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/prostitution_GC_19.png")
		if SaveManager.save.prostitution_cg["prostitution_60"] == false:
			SaveManager.save.prostitution_cg["prostitution_60"] = true
	if dialogue_label.message_id == 55:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/prostitution_GC_21_3.png")
		if SaveManager.save.prostitution_cg["prostitution_61"] == false:
			SaveManager.save.prostitution_cg["prostitution_61"] = true
	if dialogue_label.message_id == 56:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/prostitution_GC_21_4.png")
		if SaveManager.save.prostitution_cg["prostitution_62"] == false:
			SaveManager.save.prostitution_cg["prostitution_62"] = true
	if dialogue_label.message_id == 61:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/prostitution_GC_22.png")
		if SaveManager.save.prostitution_cg["prostitution_63"] == false:
			SaveManager.save.prostitution_cg["prostitution_63"] = true
	if dialogue_label.message_id == 64:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/prostitution_GC_23.png")
		if SaveManager.save.prostitution_cg["prostitution_64"] == false:
			SaveManager.save.prostitution_cg["prostitution_64"] = true
	if dialogue_label.message_id == 71:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/prostitution_GC_22.png")

	if dialogue_label.message_id == 77:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/prostitution_GC_24.png")
		if SaveManager.save.prostitution_cg["prostitution_65"] == false:
			SaveManager.save.prostitution_cg["prostitution_65"] = true
	if dialogue_label.message_id == 81:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/prostitution_GC_25.png")
		if SaveManager.save.prostitution_cg["prostitution_66"] == false:
			SaveManager.save.prostitution_cg["prostitution_66"] = true
	if dialogue_label.message_id == 85:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/prostitution_GC_19.png")

	if dialogue_label.message_id == 87:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/prostitution_GC_26.png")
		if SaveManager.save.prostitution_cg["prostitution_67"] == false:
			SaveManager.save.prostitution_cg["prostitution_67"] = true
	if dialogue_label.message_id == 98:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/prostitution_GC_27.png")
		if SaveManager.save.prostitution_cg["prostitution_68"] == false:
			SaveManager.save.prostitution_cg["prostitution_68"] = true
	if dialogue_label.message_id == 102:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/prostitution_GC_28.png")
		if SaveManager.save.prostitution_cg["prostitution_69"] == false:
			SaveManager.save.prostitution_cg["prostitution_69"] = true
	if dialogue_label.message_id == 103:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/prostitution_GC_28_2.png")
		if SaveManager.save.prostitution_cg["prostitution_70"] == false:
			SaveManager.save.prostitution_cg["prostitution_70"] = true
	if dialogue_label.message_id == 104:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/prostitution_GC_28.png")

	if dialogue_label.message_id == 105:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/prostitution_GC_28_2.png")

	if dialogue_label.message_id == 106:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/prostitution_GC_28.png")

	if dialogue_label.message_id == 107:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/prostitution_GC_28_2.png")

	if dialogue_label.message_id == 108:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/prostitution_GC_28.png")

	if dialogue_label.message_id == 109:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/prostitution_GC_28_2.png")

	if dialogue_label.message_id == 110:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/prostitution_GC_28.png")

	if dialogue_label.message_id == 111:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/prostitution_GC_28_2.png")
		
	if dialogue_label.message_id == 112:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/prostitution_GC_28.png")

	if dialogue_label.message_id == 113:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/prostitution_GC_28_2.png")

	if dialogue_label.message_id == 114:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/prostitution_GC_28.png")

	if dialogue_label.message_id == 115:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/prostitution_GC_28_2.png")

	if dialogue_label.message_id == 116:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/prostitution_GC_28.png")

	if dialogue_label.message_id == 117:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/prostitution_GC_28_2.png")

	if dialogue_label.message_id == 118:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/prostitution_GC_28.png")

	if dialogue_label.message_id == 119:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/prostitution_GC_28_2.png")

	if dialogue_label.message_id == 120:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/prostitution_GC_28.png")

	if dialogue_label.message_id == 121:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/prostitution_GC_31.png")
		if SaveManager.save.prostitution_cg["prostitution_71"] == false:
			SaveManager.save.prostitution_cg["prostitution_71"] = true
	if dialogue_label.message_id == 126:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/prostitution_GC_22.png")

	if dialogue_label.message_id == 128:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/prostitution_GC_29.png")
		if SaveManager.save.prostitution_cg["prostitution_72"] == false:
			SaveManager.save.prostitution_cg["prostitution_72"] = true
	if dialogue_label.message_id == 134:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/prostitution_GC_30.png")
		if SaveManager.save.prostitution_cg["prostitution_73"] == false:
			SaveManager.save.prostitution_cg["prostitution_73"] = true
	if dialogue_label.message_id == 140:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/prostitution_GC_32.png")
		if SaveManager.save.prostitution_cg["prostitution_74"] == false:
			SaveManager.save.prostitution_cg["prostitution_74"] = true
	if dialogue_label.message_id == 147:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/prostitution_GC_30_zoomout.png")
		if SaveManager.save.prostitution_cg["prostitution_75"] == false:
			SaveManager.save.prostitution_cg["prostitution_75"] = true
	if dialogue_label.message_id == 156:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/prostitution_GC_30_zoomout_2.png")
		if SaveManager.save.prostitution_cg["prostitution_76"] == false:
			SaveManager.save.prostitution_cg["prostitution_76"] = true
	if dialogue_label.message_id == 157:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/prostitution_GC_30_zoomout_3.png")
		if SaveManager.save.prostitution_cg["prostitution_77"] == false:
			SaveManager.save.prostitution_cg["prostitution_77"] = true
	if dialogue_label.message_id == 158:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/prostitution_GC_30_zoomout_2.png")

	if dialogue_label.message_id == 159:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/prostitution_GC_30_zoomout_3.png")

	if dialogue_label.message_id == 160:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/prostitution_GC_30_zoomout_2.png")

	if dialogue_label.message_id == 161:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/prostitution_GC_30_zoomout_3.png")

	if dialogue_label.message_id == 162:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/prostitution_GC_33.png")
		if SaveManager.save.prostitution_cg["prostitution_78"] == false:
			SaveManager.save.prostitution_cg["prostitution_78"] = true
	if dialogue_label.message_id == 166:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/prostitution_GC_34.png")
		if SaveManager.save.prostitution_cg["prostitution_79"] == false:
			SaveManager.save.prostitution_cg["prostitution_79"] = true
	if dialogue_label.message_id == 169:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/prostitution_GC_35.png")
		if SaveManager.save.prostitution_cg["prostitution_80"] == false:
			SaveManager.save.prostitution_cg["prostitution_80"] = true
	if dialogue_label.message_id == 171:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/prostitution_GC_20_2.png")
		if SaveManager.save.prostitution_cg["prostitution_81"] == false:
			SaveManager.save.prostitution_cg["prostitution_81"] = true
	if dialogue_label.message_id == 173:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/prostitution_GC_36.png")
		if SaveManager.save.prostitution_cg["prostitution_82"] == false:
			SaveManager.save.prostitution_cg["prostitution_82"] = true
	if dialogue_label.message_id == 176:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/prostitution_GC_36_2.png")
		if SaveManager.save.prostitution_cg["prostitution_83"] == false:
			SaveManager.save.prostitution_cg["prostitution_83"] = true
	if dialogue_label.message_id == 178:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/prostitution_GC_37.png")
		if SaveManager.save.prostitution_cg["prostitution_84"] == false:
			SaveManager.save.prostitution_cg["prostitution_84"] = true
	if dialogue_label.message_id == 180:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/prostitution_GC_38.png")
		if SaveManager.save.prostitution_cg["prostitution_85"] == false:
			SaveManager.save.prostitution_cg["prostitution_85"] = true
	if dialogue_label.message_id == 181:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/prostitution_GC_39.png")
		if SaveManager.save.prostitution_cg["prostitution_86"] == false:
			SaveManager.save.prostitution_cg["prostitution_86"] = true
	if dialogue_label.message_id == 182:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/prostitution_GC_40.png")
		if SaveManager.save.prostitution_cg["prostitution_87"] == false:
			SaveManager.save.prostitution_cg["prostitution_87"] = true
	if dialogue_label.message_id == 193:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/prostitution_GC_41.png")
		if SaveManager.save.prostitution_cg["prostitution_88"] == false:
			SaveManager.save.prostitution_cg["prostitution_88"] = true
	if dialogue_label.message_id == 195:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/prostitution_GC_42.png")
		if SaveManager.save.prostitution_cg["prostitution_89"] == false:
			SaveManager.save.prostitution_cg["prostitution_89"] = true
	if dialogue_label.message_id == 197:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/prostitution_GC_43.png")
		if SaveManager.save.prostitution_cg["prostitution_90"] == false:
			SaveManager.save.prostitution_cg["prostitution_90"] = true

	#Repetition C - Doug 	
	if dialogue_label.message_id == 202:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/repetition_c/prostitution_repC_1.png")
		if SaveManager.save.doug_cg["doug_14"] == false:
				SaveManager.save.doug_cg["doug_14"] = true
	if dialogue_label.message_id == 204:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/repetition_c/prostitution_repC_2.png")
		if SaveManager.save.doug_cg["doug_15"] == false:
				SaveManager.save.doug_cg["doug_15"] = true
	if dialogue_label.message_id == 204:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/repetition_c/prostitution_repC_2.png")
		if SaveManager.save.doug_cg["doug_16"] == false:
				SaveManager.save.doug_cg["doug_16"] = true
	if dialogue_label.message_id == 206:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/repetition_c/prostitution_repC_3.png")
		if SaveManager.save.doug_cg["doug_17"] == false:
				SaveManager.save.doug_cg["doug_17"] = true
	if dialogue_label.message_id == 210:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/repetition_c/prostitution_repC_4.png")
		if SaveManager.save.doug_cg["doug_18"] == false:
				SaveManager.save.doug_cg["doug_18"] = true
	if dialogue_label.message_id == 214:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/repetition_c/prostitution_repC_5.png")
		if SaveManager.save.doug_cg["doug_19"] == false:
				SaveManager.save.doug_cg["doug_19"] = true
	if dialogue_label.message_id == 218:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/repetition_c/prostitution_repC_6.png")
		if SaveManager.save.doug_cg["doug_20"] == false:
				SaveManager.save.doug_cg["doug_20"] = true
	if dialogue_label.message_id == 220:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/repetition_c/prostitution_repC_7.png")
		if SaveManager.save.doug_cg["doug_21"] == false:
				SaveManager.save.doug_cg["doug_21"] = true
	if dialogue_label.message_id == 221:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/repetition_c/prostitution_repC_8.png")
		if SaveManager.save.doug_cg["doug_22"] == false:
				SaveManager.save.doug_cg["doug_22"] = true
	if dialogue_label.message_id == 222:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/repetition_c/prostitution_repC_9.png")
		if SaveManager.save.doug_cg["doug_23"] == false:
				SaveManager.save.doug_cg["doug_23"] = true
	if dialogue_label.message_id == 224:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/repetition_c/prostitution_repC_10.png")
		if SaveManager.save.doug_cg["doug_24"] == false:
				SaveManager.save.doug_cg["doug_24"] = true
	if dialogue_label.message_id == 226:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/repetition_c/prostitution_repC_11.png")
		if SaveManager.save.doug_cg["doug_25"] == false:
				SaveManager.save.doug_cg["doug_25"] = true
	if dialogue_label.message_id == 238:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/repetition_c/prostitution_repC_12.png")
		if SaveManager.save.doug_cg["doug_26"] == false:
				SaveManager.save.doug_cg["doug_26"] = true
	if dialogue_label.message_id == 245:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/repetition_c/prostitution_repC_13.png")
		if SaveManager.save.doug_cg["doug_27"] == false:
				SaveManager.save.doug_cg["doug_27"] = true
	if dialogue_label.message_id == 247:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/repetition_c/prostitution_repC_14.png")
		if SaveManager.save.doug_cg["doug_28"] == false:
				SaveManager.save.doug_cg["doug_28"] = true
	if dialogue_label.message_id == 252:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/repetition_c/prostitution_repC_15.png")
		if SaveManager.save.doug_cg["doug_29"] == false:
				SaveManager.save.doug_cg["doug_29"] = true
	if dialogue_label.message_id == 256:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/repetition_c/prostitution_repC_16.png")
		if SaveManager.save.doug_cg["doug_30"] == false:
				SaveManager.save.doug_cg["doug_30"] = true
	if dialogue_label.message_id == 257:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/repetition_c/prostitution_repC_15.png")

	if dialogue_label.message_id == 258:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/repetition_c/prostitution_repC_16.png")

	if dialogue_label.message_id == 259:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/repetition_c/prostitution_repC_15.png")

	if dialogue_label.message_id == 260:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/repetition_c/prostitution_repC_16.png")

	if dialogue_label.message_id == 261:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/repetition_c/prostitution_repC_15.png")

	if dialogue_label.message_id == 262:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/repetition_c/prostitution_repC_16.png")

	if dialogue_label.message_id == 264:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/repetition_c/prostitution_repC_17.png")
		if SaveManager.save.doug_cg["doug_31"] == false:
				SaveManager.save.doug_cg["doug_31"] = true
	if dialogue_label.message_id == 270:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/repetition_c/prostitution_repC_18.png")
		if SaveManager.save.doug_cg["doug_32"] == false:
				SaveManager.save.doug_cg["doug_32"] = true
	if dialogue_label.message_id == 271:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/repetition_c/prostitution_repC_19.png")
		if SaveManager.save.doug_cg["doug_33"] == false:
				SaveManager.save.doug_cg["doug_33"] = true
	if dialogue_label.message_id == 273:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/repetition_c/prostitution_repC_18.png")

	if dialogue_label.message_id == 274:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/repetition_c/prostitution_repC_19.png")

	if dialogue_label.message_id == 277:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/repetition_c/prostitution_repC_18.png")

	if dialogue_label.message_id == 278:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/repetition_c/prostitution_repC_19.png")

	if dialogue_label.message_id == 279:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/repetition_c/prostitution_repC_18.png")

	if dialogue_label.message_id == 280:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/repetition_c/prostitution_repC_19.png")

	if dialogue_label.message_id == 280:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/repetition_c/prostitution_repC_19.png")

	if dialogue_label.message_id == 281:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/repetition_c/prostitution_repC_20.png")
		if SaveManager.save.doug_cg["doug_34"] == false:
				SaveManager.save.doug_cg["doug_34"] = true
	if dialogue_label.message_id == 289:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/repetition_c/prostitution_repC_23.png")
		if SaveManager.save.doug_cg["doug_35"] == false:
				SaveManager.save.doug_cg["doug_35"] = true
	if dialogue_label.message_id == 296:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/repetition_c/prostitution_repC_21.png")
		if SaveManager.save.doug_cg["doug_36"] == false:
				SaveManager.save.doug_cg["doug_36"] = true
	if dialogue_label.message_id == 297:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/repetition_c/prostitution_repC_22.png")
		if SaveManager.save.doug_cg["doug_37"] == false:
				SaveManager.save.doug_cg["doug_37"] = true
	if dialogue_label.message_id == 298:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/repetition_c/prostitution_repC_21.png")

	if dialogue_label.message_id == 299:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/repetition_c/prostitution_repC_22.png")

	if dialogue_label.message_id == 300:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/repetition_c/prostitution_repC_21.png")

	if dialogue_label.message_id == 301:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/repetition_c/prostitution_repC_22.png")

	if dialogue_label.message_id == 302:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/repetition_c/prostitution_repC_21.png")

	if dialogue_label.message_id == 304:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/repetition_c/prostitution_repC_24.png")
		if SaveManager.save.doug_cg["doug_38"] == false:
				SaveManager.save.doug_cg["doug_38"] = true
	if dialogue_label.message_id == 307:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/repetition_c/prostitution_repC_25.png")
		if SaveManager.save.doug_cg["doug_39"] == false:
				SaveManager.save.doug_cg["doug_39"] = true
	if dialogue_label.message_id == 313:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/repetition_c/prostitution_repC_26.png")
		if SaveManager.save.doug_cg["doug_40"] == false:
				SaveManager.save.doug_cg["doug_40"] = true
	if dialogue_label.message_id == 313:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/repetition_c/prostitution_repC_26.png")

	if dialogue_label.message_id == 314:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/repetition_c/prostitution_repC_27.png")
		if SaveManager.save.doug_cg["doug_41"] == false:
				SaveManager.save.doug_cg["doug_41"] = true
	if dialogue_label.message_id == 317:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/repetition_c/prostitution_repC_28.png")
		if SaveManager.save.doug_cg["doug_42"] == false:
				SaveManager.save.doug_cg["doug_42"] = true
	if dialogue_label.message_id == 319:
		scene_bg.texture = load("res://assets/prostitution_storyboard/third/repetition_c/prostitution_repC_29.png")
		if SaveManager.save.doug_cg["doug_43"] == false:
				SaveManager.save.doug_cg["doug_43"] = true
	if dialogue_label.message_id == 200 or dialogue_label.message_id == 320:
		scene_finished = true
	
	if scene_finished:
		if SceneTracker.scene_1 == null and SceneTracker.scene_2 != null:
			Events.change_scene_to_packed.emit(SceneTracker.scene_2)
		if SceneTracker.scene_2 == null and SceneTracker.scene_3 != null:
			Events.change_scene_to_packed.emit(SceneTracker.scene_3)
		if SceneTracker.scene_3 == null:
			SaveManager.save.day += 1
			SaveManager.save.bar["visited"] = false
			SaveManager.save.park["visited"] = false
			SaveManager.save.boutique["visited"] = false
			SaveManager.save.hospital["visited"] = false
			SaveManager.save.old_shop["visited"] = false
			SaveManager.save.same_day = false
			Events.change_scene_to_path.emit("res://scenes/player_hub.tscn")

func _exit_tree():
	if SceneTracker.scene_1 == null and SceneTracker.scene_2 != null:
		SceneTracker.scene_2 = null
	elif SceneTracker.scene_2 == null and SceneTracker.scene_3 != null:
		SceneTracker.scene_3 = null
