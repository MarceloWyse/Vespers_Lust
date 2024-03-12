extends Node

func _ready():
	Events.change_scene_to_path.connect(change_scene)
	Events.change_scene_to_packed.connect(change_to_loaded)

func change_scene(path_to_scene):
	for child in get_children():
		remove_child(child) # Crashes without explicitly removing from the scene.
		child.queue_free()

	var new_scene = load(path_to_scene).instantiate()
	add_child(new_scene)

func change_to_loaded(loaded_scene):
	for child in get_children():
		remove_child(child) # Crashes without explicitly removing from the scene.
		child.queue_free()

	var new_scene = loaded_scene.instantiate()
	add_child(new_scene)
