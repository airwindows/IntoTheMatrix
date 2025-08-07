extends TextEdit
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var targetSeats: int = self.text.to_int()
	targetSeats += randi_range(0, targetSeats)
	self.text = str(targetSeats)
	
