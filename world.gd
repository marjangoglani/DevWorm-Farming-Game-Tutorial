extends Node2D

@onready var tile_map : TileMap = $TileMap
var tilled_soil_layer_num = 1

func _input(event):
	if Input.is_action_just_pressed("Click"):
		var mouse_position = get_global_mouse_position()
		var tile_mouse_pos = tile_map.local_to_map(mouse_position)
		var source_id = 2 		# kinda hard coded, is there a way I can grab this num from tile_map?
		var atlas_coord = Vector2i(11,1)
		tile_map.set_cell(tilled_soil_layer_num, tile_mouse_pos, source_id, atlas_coord)
		
