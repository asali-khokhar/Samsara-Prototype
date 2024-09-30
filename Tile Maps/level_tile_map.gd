class_name LevelTileMap
extends TileMap


# Called when the node enters the scene tree for the first time.
func _ready():
	LevelManager.ChangeTileMapBounds( GetTileMapBounds() )
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func GetTileMapBounds() -> Array[ Vector2 ]:
	var bounds : Array[ Vector2 ] = []
	bounds.append(
		Vector2( get_used_rect().position * rendering_quadrant_size )
	)
	bounds.append(
		Vector2( get_used_rect().end * rendering_quadrant_size )
	)
	
	return bounds
