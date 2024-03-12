extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	SaveManager.save.same_day = true

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_hub_btn_pressed():
	Events.change_scene_to_path.emit("res://scenes/player_hub.tscn")
