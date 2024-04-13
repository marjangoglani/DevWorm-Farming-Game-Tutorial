extends Node2D

@onready var tile_map : TileMap = $TileMap
# layer number is NOT the z index. It's the index in which
# they appear in the list
# if you hover over the name you can see the layer num
var tilled_soil_layer_num = 4
var environment_layer_num = 5
var can_place_seeds_custom_data = "can_place_seeds"

func _input(event):
	if Input.is_action_just_pressed("Click"):
		var mouse_position = get_global_mouse_position()
		var tile_mouse_pos = tile_map.local_to_map(mouse_position)
		var source_id = 2 		# kinda hard coded, is there a way I can grab this num from tile_map?
		var atlas_coord = Vector2i(11,1)
		var tile_data : TileData = tile_map.get_cell_tile_data(tilled_soil_layer_num, tile_mouse_pos)
		
		if tile_data:
			var can_place_seeds = tile_data.get_custom_data(can_place_seeds_custom_data)
			if can_place_seeds:
				tile_map.set_cell(environment_layer_num, tile_mouse_pos, source_id, atlas_coord)
			else:
				print("can't place here")
		else:
			print("no tile data")
