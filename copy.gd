extends Button

func _pressed():
	var output: String # = get_parent().get_node("Code2").text + "\n\n"
	output = get_parent().get_node("Code").text + "\n\n"
	DisplayServer.clipboard_set(output)
	get_tree().quit()
