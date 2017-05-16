extends Node

class House:

	var _done = false
	
	func init(xy):
		var x = xy[0]
		var y = xy[1]
		if !Global.Level.content_has(x,y,"House") and\
		!Global.Level.content_has(x,y,"Trees") and\
		!Global.Level.content_has(x,y,"Road") and\
		!Global.Level.content_has(x,y,"River"):
			Global.content(Vector2(x,y)).append({"House":self})
			LevelState.add_cell([[x,y,"Items",0]])
			
			_done = true
	
	func _ready():
		
		if _done:
			return(true)
		else:
			return(false)
