extends Control

@onready var scene_bg = $SceneBg
@onready var dialogue_label = $DialogBox/DialogueLabel as DialogueLabel
var scene_finished
# Called when the node enters the scene tree for the first time.
func _ready():
	
	SaveManager.save.fourth_prostitution = true
	
	if not SaveManager.save.fourth_prostitution:
		dialogue_label.start_dialogue()
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_1.png")
		SaveManager.save.fourth_prostitution = true
	elif SaveManager.save.fourth_prostitution:
		dialogue_label.jump_to(362)
		
func _process(delta):
	
	if dialogue_label.message_id == 5:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_3.png") 

	if dialogue_label.message_id == 10:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_2.png") 

	if dialogue_label.message_id == 13:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_7.png") 

	if dialogue_label.message_id == 16:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_4.png") 

	if dialogue_label.message_id == 19:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_5.png") 

	if dialogue_label.message_id == 23:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_6.png") 

	if dialogue_label.message_id == 26:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_8.png") 

	if dialogue_label.message_id == 31:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_9.png") 

	if dialogue_label.message_id == 33:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_10.png") 

	if dialogue_label.message_id == 39:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_11.png") 

	if dialogue_label.message_id == 40:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_12.png") 

	if dialogue_label.message_id == 41:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_13.png") 

	if dialogue_label.message_id == 42:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_14.png") 

	if dialogue_label.message_id == 43:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_15.png") 

	if dialogue_label.message_id == 45:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_16.png") 

	if dialogue_label.message_id == 48:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_17.png") 

	if dialogue_label.message_id == 50:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_18.png") 

	if dialogue_label.message_id == 53:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_19.png") 

	if dialogue_label.message_id == 58:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_20.png") 

	if dialogue_label.message_id == 60:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_21.png") 

	if dialogue_label.message_id == 63:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_22.png") 

	if dialogue_label.message_id == 68:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_23.png") 

	if dialogue_label.message_id == 70:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_24.png") 

	if dialogue_label.message_id == 72:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_25.png") 

	if dialogue_label.message_id == 76:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_26.png") 

	if dialogue_label.message_id == 80:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_27.png") 

	if dialogue_label.message_id == 84:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_28.png") 

	if dialogue_label.message_id == 87:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_29.png") 

	if dialogue_label.message_id == 89:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_30.png") 

	if dialogue_label.message_id == 99:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_31.png") 

	if dialogue_label.message_id == 103:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_32.png") 

	if dialogue_label.message_id == 105:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_33.png") 

	if dialogue_label.message_id == 108:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_34.png") 

	if dialogue_label.message_id == 111:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_35.png") 

	if dialogue_label.message_id == 112:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_36.png") 

	if dialogue_label.message_id == 113:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_35.png") 

	if dialogue_label.message_id == 114:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_37.png") 

	if dialogue_label.message_id == 115:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_38.png") 

	if dialogue_label.message_id == 116:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_39.png")

	if dialogue_label.message_id == 118:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_40.png")  

	if dialogue_label.message_id == 122:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_41.png") 

	if dialogue_label.message_id == 125:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_42.png") 

	if dialogue_label.message_id == 127:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_43.png") 

	if dialogue_label.message_id == 129:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_44.png") 

	if dialogue_label.message_id == 131:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_45.png") 

	if dialogue_label.message_id == 136:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_46.png") 

	if dialogue_label.message_id == 136:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_46.png") 

	if dialogue_label.message_id == 138:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_47.png") 

	if dialogue_label.message_id == 139:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_48.png") 

	if dialogue_label.message_id == 140:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_49.png") 

	if dialogue_label.message_id == 142:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_50.png") 

	if dialogue_label.message_id == 146:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_51.png") 

	if dialogue_label.message_id == 147:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_52.png") 

	if dialogue_label.message_id == 149:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_53.png") 

	if dialogue_label.message_id == 151:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_54.png") 

	if dialogue_label.message_id == 154:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_55.png") 

	if dialogue_label.message_id == 159:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_56.png") 

	if dialogue_label.message_id == 167:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_57.png") 

	if dialogue_label.message_id == 168:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_58.png") 

	if dialogue_label.message_id == 172:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_59.png") 

	if dialogue_label.message_id == 173:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_60.png") 

	if dialogue_label.message_id == 174:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_61.png") 

	if dialogue_label.message_id == 176:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_62.png") 

	if dialogue_label.message_id == 178:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_63.png") 

	if dialogue_label.message_id == 179:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_65.png") 

	if dialogue_label.message_id == 180:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_64.png") 

	if dialogue_label.message_id == 186:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_66.png") 

	if dialogue_label.message_id == 189:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_67.png") 

	if dialogue_label.message_id == 192:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_68.png") 

	if dialogue_label.message_id == 193:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_69.png") 

	if dialogue_label.message_id == 194:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_68.png") 

	if dialogue_label.message_id == 195:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_69.png") 

	if dialogue_label.message_id == 196:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_68.png") 

	if dialogue_label.message_id == 197:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_69.png") 

	if dialogue_label.message_id == 198:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_70.png") 

	if dialogue_label.message_id == 201:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_71.png") 

	if dialogue_label.message_id == 208:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_72.png") 

	if dialogue_label.message_id == 211:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_73.png") 

	if dialogue_label.message_id == 212:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_74.png") 

	if dialogue_label.message_id == 214:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_75.png") 

	if dialogue_label.message_id == 216:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_76.png") 

	if dialogue_label.message_id == 216:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_76.png") 

	if dialogue_label.message_id == 222:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_77.png") 

	if dialogue_label.message_id == 223:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_78.png") 

	if dialogue_label.message_id == 224:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_79.png") 

	if dialogue_label.message_id == 225:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_80.png") 

	if dialogue_label.message_id == 227:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_81.png") 

	if dialogue_label.message_id == 243:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_82.png") 

	if dialogue_label.message_id == 256:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_83.png") 

	if dialogue_label.message_id == 259:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_84.png") 

	if dialogue_label.message_id == 260:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_85.png") 

	if dialogue_label.message_id == 263:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_86.png") 

	if dialogue_label.message_id == 271:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_87.png") 

	if dialogue_label.message_id == 279:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_88.png") 

	if dialogue_label.message_id == 281:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_89.png") 

	if dialogue_label.message_id == 283:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_90.png") 

	if dialogue_label.message_id == 289:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_91.png") 

	if dialogue_label.message_id == 295:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_92.png") 

	if dialogue_label.message_id == 301:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_93.png") 

	if dialogue_label.message_id == 304:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_94.png") 

	if dialogue_label.message_id == 306:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_95.png") 

	if dialogue_label.message_id == 307:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_96.png") 

	if dialogue_label.message_id == 311:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_97.png") 

	if dialogue_label.message_id == 312:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_98.png") 

	if dialogue_label.message_id == 313:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_97.png") 

	if dialogue_label.message_id == 314:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_98.png") 

	if dialogue_label.message_id == 315:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_97.png") 

	if dialogue_label.message_id == 316:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_98.png") 

	if dialogue_label.message_id == 317:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_97.png") 

	if dialogue_label.message_id == 318:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_98.png") 

	if dialogue_label.message_id == 319:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_99.png") 

	if dialogue_label.message_id == 332:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_101.png") 

	if dialogue_label.message_id == 334:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_102.png") 

	if dialogue_label.message_id == 336:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_100.png") 

	if dialogue_label.message_id == 340:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_104.png") 

	if dialogue_label.message_id == 341:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_103.png") 

	if dialogue_label.message_id == 342:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_104.png") 

	if dialogue_label.message_id == 343:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_103.png") 

	if dialogue_label.message_id == 344:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_104.png") 

	if dialogue_label.message_id == 345:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_103.png") 

	if dialogue_label.message_id == 346:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_104.png") 

	if dialogue_label.message_id == 347:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_103.png") 

	if dialogue_label.message_id == 348:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_105.png") 

	if dialogue_label.message_id == 350:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_105-106.png") 

	if dialogue_label.message_id == 351:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_106.png") 

	if dialogue_label.message_id == 352:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_107.png") 

	if dialogue_label.message_id == 353:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_108.png") 

	if dialogue_label.message_id == 355:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_109.png") 

	if dialogue_label.message_id == 356:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_110.png") 

	if dialogue_label.message_id == 356:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_110.png") 

	if dialogue_label.message_id == 358:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/prostitution_GB_111.png") 

	#Doug repetititon:
	if dialogue_label.message_id == 362:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/repetition/prostitution_repB_1.png")

	if dialogue_label.message_id == 365:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/repetition/prostitution_repB_2.png")

	if dialogue_label.message_id == 368:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/repetition/prostitution_repB_3.png")

	if dialogue_label.message_id == 370:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/repetition/prostitution_repB_4.png")

	if dialogue_label.message_id == 373:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/repetition/prostitution_repB_5.png")

	if dialogue_label.message_id == 375:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/repetition/prostitution_repB_6.png")

	if dialogue_label.message_id == 377:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/repetition/prostitution_repB_7.png")

	if dialogue_label.message_id == 380:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/repetition/prostitution_repB_8.png")

	if dialogue_label.message_id == 383:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/repetition/prostitution_repB_9.png")

	if dialogue_label.message_id == 385:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/repetition/prostitution_repB_10.png")

	if dialogue_label.message_id == 389:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/repetition/prostitution_repB_11.png")

	if dialogue_label.message_id == 391:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/repetition/prostitution_repB_12.png")

	if dialogue_label.message_id == 393:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/repetition/prostitution_repB_13.png")

	if dialogue_label.message_id == 397:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/repetition/prostitution_repB_14.png")

	if dialogue_label.message_id == 400:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/repetition/prostitution_repB_15.png")

	if dialogue_label.message_id == 403:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/repetition/prostitution_repB_16.png")

	if dialogue_label.message_id == 406:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/repetition/prostitution_repB_18.png")

	if dialogue_label.message_id == 407:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/repetition/prostitution_repB_17.png")

	if dialogue_label.message_id == 408:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/repetition/prostitution_repB_18.png")

	if dialogue_label.message_id == 409:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/repetition/prostitution_repB_17.png")

	if dialogue_label.message_id == 410:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/repetition/prostitution_repB_18.png")

	if dialogue_label.message_id == 411:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/repetition/prostitution_repB_17.png")

	if dialogue_label.message_id == 412:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/repetition/prostitution_repB_18.png")

	if dialogue_label.message_id == 414:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/repetition/prostitution_repB_19.png")

	if dialogue_label.message_id == 414:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/repetition/prostitution_repB_19.png")

	if dialogue_label.message_id == 418:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/repetition/prostitution_repB_20.png")

	if dialogue_label.message_id == 418:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/repetition/prostitution_repB_20.png")

	if dialogue_label.message_id == 422:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/repetition/prostitution_repB_21.png")

	if dialogue_label.message_id == 426:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/repetition/prostitution_repB_22.png")

	if dialogue_label.message_id == 429:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/repetition/prostitution_repB_23.png")

	if dialogue_label.message_id == 430:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/repetition/prostitution_repB_24.png")

	if dialogue_label.message_id == 431:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/repetition/prostitution_repB_23.png")

	if dialogue_label.message_id == 432:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/repetition/prostitution_repB_24.png")

	if dialogue_label.message_id == 433:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/repetition/prostitution_repB_23.png")

	if dialogue_label.message_id == 434:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/repetition/prostitution_repB_24.png")

	if dialogue_label.message_id == 435:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/repetition/prostitution_repB_25.png")

	if dialogue_label.message_id == 436:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/repetition/prostitution_repB_26.png")

	if dialogue_label.message_id == 437:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/repetition/prostitution_repB_25.png")

	if dialogue_label.message_id == 438:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/repetition/prostitution_repB_26.png")

	if dialogue_label.message_id == 439:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/repetition/prostitution_repB_25.png")

	if dialogue_label.message_id == 440:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/repetition/prostitution_repB_26.png")

	if dialogue_label.message_id == 441:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/repetition/prostitution_repB_27.png")

	if dialogue_label.message_id == 442:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/repetition/prostitution_repB_28.png")

	if dialogue_label.message_id == 443:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/repetition/prostitution_repB_27.png")

	if dialogue_label.message_id == 444:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/repetition/prostitution_repB_28.png")

	if dialogue_label.message_id == 445:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/repetition/prostitution_repB_27.png")

	if dialogue_label.message_id == 446:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/repetition/prostitution_repB_28.png")

	if dialogue_label.message_id == 447:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/repetition/prostitution_repB_27.png")

	if dialogue_label.message_id == 448:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/repetition/prostitution_repB_28.png")

	if dialogue_label.message_id == 449:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/repetition/prostitution_repB_27.png")

	if dialogue_label.message_id == 450:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/repetition/prostitution_repB_29.png")

	if dialogue_label.message_id == 451:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/repetition/prostitution_repB_30.png")

	if dialogue_label.message_id == 452:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/repetition/prostitution_repB_29.png")

	if dialogue_label.message_id == 453:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/repetition/prostitution_repB_30.png")

	if dialogue_label.message_id == 454:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/repetition/prostitution_repB_29.png")

	if dialogue_label.message_id == 455:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/repetition/prostitution_repB_30.png")

	if dialogue_label.message_id == 456:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/repetition/prostitution_repB_31.png")

	if dialogue_label.message_id == 458:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/repetition/prostitution_repB_32.png")

	if dialogue_label.message_id == 460:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/repetition/prostitution_repB_33.png")

	if dialogue_label.message_id == 462:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/repetition/prostitution_repB_34.png")

	if dialogue_label.message_id == 465:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fourth/repetition/prostitution_repB_35.png")

	if dialogue_label.message_id == 360 or dialogue_label.message_id == 468:
		scene_finished = true
	
	if scene_finished:
		if SceneTracker.scene_1 == null and SceneTracker.scene_2 != null:
			get_tree().change_scene_to_packed(SceneTracker.scene_2)
		if SceneTracker.scene_2 == null and SceneTracker.scene_3 != null:
			get_tree().change_scene_to_packed(SceneTracker.scene_3)
		if SceneTracker.scene_3 == null:
			SaveManager.save.day += 1
			SaveManager.save.bar["visited"] = false
			SaveManager.save.park["visited"] = false
			SaveManager.save.boutique["visited"] = false
			SaveManager.save.hospital["visited"] = false
			SaveManager.save.old_shop["visited"] = false
			SaveManager.save.same_day = false
			get_tree().change_scene_to_file("res://scenes/player_hub.tscn")

func _exit_tree():
	if SceneTracker.scene_1 == null and SceneTracker.scene_2 != null:
		SceneTracker.scene_2 = null
	elif SceneTracker.scene_2 == null and SceneTracker.scene_3 != null:
		SceneTracker.scene_3 = null
