extends TextEdit


func targetSeatsUpdated():
	#call this when the textChanged signal is emitted on targetSeats
	text = str((int(get_parent().get_node("targetSeats").text.to_float()*3.0)))
	#we already know the value we want is going to be somewhat less than the real seat number,
	#so let's get a head start on the chase
