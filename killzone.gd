extends Area2D
var start_pos

# Called when the node enters the scene tree for the first time.
 


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node2D) -> void:
	if body.name == "player":
		get_tree().change_scene_to_file("res://main.tscn")
"res://killzone.gd"
