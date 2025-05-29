extends TextEdit


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.



func _text_changed():
	var data: String = self.text
	if (get_caret_column(0)>1):
		data = data.to_upper().right(1)
	else:
		data = data.to_upper().left(1)
	data = char(min(max(data.unicode_at(0)-65,0),25)+65)
	text = data
	pass
