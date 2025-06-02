extends Button
var delaysB: PackedInt32Array

func _pressed():
	get_parent().get_node("Timer3").paused = true
	delaysB.resize(26)
	delaysB.fill(1)
	delaysB[1] = get_parent().get_node("TextEdit1").text.to_int()
	delaysB[2] = get_parent().get_node("TextEdit2").text.to_int()
	delaysB[3] = get_parent().get_node("TextEdit3").text.to_int()
	delaysB[4] = get_parent().get_node("TextEdit7").text.to_int()
	delaysB[5] = get_parent().get_node("TextEdit8").text.to_int()
	delaysB[6] = get_parent().get_node("TextEdit9").text.to_int()
	delaysB[7] = get_parent().get_node("TextEdit13").text.to_int()
	delaysB[8] = get_parent().get_node("TextEdit14").text.to_int()
	delaysB[9] = get_parent().get_node("TextEdit15").text.to_int()
	var longest: int  = 0
	var shortest: int = 99999999999
	#do primary matrix calculation
	for a: int in range (1,4):
		for b: int in range (4,7):
			for c: int in range (7,10):
				var pos = delaysB[a]+delaysB[b]+delaysB[c]
				if pos > longest:
					longest = pos
				if pos < shortest:
					shortest = pos
				#now we have the final delay time
	#rotate
	var rotated: PackedInt32Array
	rotated.resize(10)
	rotated.fill(0)
	rotated[1] = delaysB[7]
	rotated[2] = delaysB[4]
	rotated[3] = delaysB[1]
	rotated[4] = delaysB[8]
	rotated[5] = delaysB[5]
	rotated[6] = delaysB[2]
	rotated[7] = delaysB[9]
	rotated[8] = delaysB[6]
	rotated[9] = delaysB[3]
	#do cross matrix calculation
	for a: int in range (1,4): #note the final value is the first NOT included number
		for b: int in range (4,7):
			for c: int in range (7,10):
				var pos = rotated[a]+rotated[b]+rotated[c]
				if pos > longest:
					longest = pos
				if pos < shortest:
					shortest = pos
				#now we have the final delay time
	var milliseconds: float = float((shortest+longest)/2.0)/44.1
	var seats: float  = (milliseconds/2.9)*(milliseconds/2.9)
	var venue: String = "room"
	if (seats > 100):
		venue = "club"
	if (seats > 400):
		venue = "theater"
	if (seats > 800):
		venue = "hall"
	if (seats > 2000):
		venue = "arena"
	if (seats > 10000):
		venue = "stadium"
	get_parent().get_node("RichTextLabel2").text = str(int(shortest/44.1))+" to "+str(int(longest/44.1))+" ms, "+str(int(seats))+" seat "+venue
	var current_date_time = Time.get_datetime_dict_from_system()
	var suffix: String = ""
	suffix = suffix + "-" + get_parent().get_node("Controls1").text + get_parent().get_node("Controls2").text
	suffix = suffix + get_parent().get_node("Controls3").text + get_parent().get_node("Controls4").text
	suffix = suffix + get_parent().get_node("Controls5").text + get_parent().get_node("Controls6").text
	suffix = suffix + " 3x3 on %04d-%02d-%02d" % [current_date_time["year"], current_date_time["month"], current_date_time["day"]]
	var taps: String = "const int earlyA = "+str(delaysB[1])+"; "
	taps = taps+"const int earlyB = "+str(delaysB[2])+"; "
	taps = taps+"const int earlyC = "+str(delaysB[3])+"; "
	taps = taps+"const int earlyD = "+str(delaysB[4])+"; "
	taps = taps+"const int earlyE = "+str(delaysB[5])+"; "
	taps = taps+"const int earlyF = "+str(delaysB[6])+"; "
	taps = taps+"const int earlyG = "+str(delaysB[7])+"; "
	taps = taps+"const int earlyH = "+str(delaysB[8])+"; "
	taps = taps+"const int earlyI = "+str(delaysB[9])+"; "
	taps = taps+"const int predelay = "+str(shortest)+"; //"
	taps = taps+str(int(shortest/44.1))+" to "+str(int(longest/44.1))+" ms, "+str(int(seats))+" seat "+venue+"  \n//"+str(int(seats))+get_parent().get_node("MatrixName").text+suffix
	
	get_parent().get_node("Code").text = taps
	get_parent().get_node("search6").disabled = false
	get_parent().get_node("halt6").disabled = false
	get_parent().get_node("search5").disabled = false
	get_parent().get_node("halt5").disabled = false
	get_parent().get_node("search4").disabled = false
	get_parent().get_node("halt4").disabled = false
	var billion: int = get_parent().get_node("totalIterations").text.to_int()
	var million: int = get_parent().get_node("sinceIterations").text.to_int()
	if (get_parent().get_node("Generating").button_pressed && billion < 16000000 && million < 1000000):
		get_parent().get_node("Timer3").paused = false
