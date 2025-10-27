extends Node2D

@onready var base_material := preload("res://mask_material.tres")

# Called when the node enters the scene tree for the first time.
func _ready():
	for sprite in get_children():
		if not sprite is Sprite2D:
			continue
		
		var mat := base_material.duplicate()
		mat.set("shader_parameter/mask_tex", load("res://%s_mask.png" % sprite.name))
		sprite.material = mat
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
