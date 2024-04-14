extends Panel

@onready var backgroundSprite: Sprite2D = $background
@onready var itemSprite: Sprite2D = $CenterContainer/item

func update(item: InventoryItem):
	if !item: 
		backgroundSprite.frame = 0
		itemSprite.visible = false
	else:
		backgroundSprite.frame = 1
		itemSprite.frame = 1
		itemSprite.texture = item.texture
