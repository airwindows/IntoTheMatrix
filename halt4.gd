extends Button
var delaysB: PackedInt32Array

func _pressed():
	get_parent().get_node("Timer4").paused = true
	delaysB.resize(26)
	delaysB.fill(1)
	delaysB[1] = get_parent().get_node("TextEdit1").text.to_int()
	delaysB[2] = get_parent().get_node("TextEdit2").text.to_int()
	delaysB[3] = get_parent().get_node("TextEdit3").text.to_int()
	delaysB[4] = get_parent().get_node("TextEdit4").text.to_int()
	delaysB[5] = get_parent().get_node("TextEdit7").text.to_int()
	delaysB[6] = get_parent().get_node("TextEdit8").text.to_int()
	delaysB[7] = get_parent().get_node("TextEdit9").text.to_int()
	delaysB[8] = get_parent().get_node("TextEdit10").text.to_int()
	delaysB[9] = get_parent().get_node("TextEdit13").text.to_int()
	delaysB[10] = get_parent().get_node("TextEdit14").text.to_int()
	delaysB[11] = get_parent().get_node("TextEdit15").text.to_int()
	delaysB[12] = get_parent().get_node("TextEdit16").text.to_int()
	delaysB[13] = get_parent().get_node("TextEdit19").text.to_int()
	delaysB[14] = get_parent().get_node("TextEdit20").text.to_int()
	delaysB[15] = get_parent().get_node("TextEdit21").text.to_int()
	delaysB[16] = get_parent().get_node("TextEdit22").text.to_int()
	var longest: int  = 0
	var shortest: int = 99999999999
	#do primary matrix calculation
	for a: int in range (1,5): #note the final value is the first NOT included number
		for b: int in range (5,9):
			for c: int in range (9,13):
				for d: int in range (13,17):
					var pos = delaysB[a]+delaysB[b]+delaysB[c]+delaysB[d]
					if pos > longest:
						longest = pos
					if pos < shortest:
						shortest = pos
					#now we have the final delay time
	#rotate
	var rotated: PackedInt32Array
	rotated.resize(17)
	rotated.fill(0)
	rotated[1] = delaysB[13]
	rotated[2] = delaysB[9]
	rotated[3] = delaysB[5]
	rotated[4] = delaysB[1]
	rotated[5] = delaysB[14]
	rotated[6] = delaysB[10]
	rotated[7] = delaysB[6]
	rotated[8] = delaysB[2]
	rotated[9] = delaysB[15]
	rotated[10] = delaysB[11]
	rotated[11] = delaysB[7]
	rotated[12] = delaysB[3]
	rotated[13] = delaysB[16]
	rotated[14] = delaysB[12]
	rotated[15] = delaysB[8]
	rotated[16] = delaysB[4]
	#do cross matrix calculation
	for a: int in range (1,5):
		for b: int in range (5,9):
			for c: int in range (9,13):
				for d: int in range (13,17):
					var pos = rotated[a]+rotated[b]+rotated[c]+rotated[d]
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
	suffix = suffix + get_parent().get_node("Controls7").text + get_parent().get_node("Controls8").text
	suffix = suffix + "4 on %04d-%02d-%02d" % [current_date_time["year"], current_date_time["month"], current_date_time["day"]]
	var taps: String = "const int d4A = "+str(delaysB[1])+"; "
	taps = taps+"const int d4B = "+str(delaysB[2])+"; "
	taps = taps+"const int d4C = "+str(delaysB[3])+"; "
	taps = taps+"const int d4D = "+str(delaysB[4])+"; "
	taps = taps+"const int d4E = "+str(delaysB[5])+"; "
	taps = taps+"const int d4F = "+str(delaysB[6])+"; "
	taps = taps+"const int d4G = "+str(delaysB[7])+"; "
	taps = taps+"const int d4H = "+str(delaysB[8])+"; "
	taps = taps+"const int d4I = "+str(delaysB[9])+"; "
	taps = taps+"const int d4J = "+str(delaysB[10])+"; "
	taps = taps+"const int d4K = "+str(delaysB[11])+"; "
	taps = taps+"const int d4L = "+str(delaysB[12])+"; "
	taps = taps+"const int d4M = "+str(delaysB[13])+"; "
	taps = taps+"const int d4N = "+str(delaysB[14])+"; "
	taps = taps+"const int d4O = "+str(delaysB[15])+"; "
	taps = taps+"const int d4P = "+str(delaysB[16])+"; //"
	taps = taps+str(int(shortest/44.1))+" to "+str(int(longest/44.1))+" ms, "+str(int(seats))+" seat "+venue+"  \n#define FOURBYFOUR true //"+str(int(seats))+get_parent().get_node("MatrixName").text+suffix
	
	get_parent().get_node("Code").text = taps
	get_parent().get_node("search6").disabled = false
	get_parent().get_node("halt6").disabled = false
	get_parent().get_node("search5").disabled = false
	get_parent().get_node("halt5").disabled = false
	get_parent().get_node("search3").disabled = false
	get_parent().get_node("halt3").disabled = false
	var halt: String = get_parent().get_node("totalIterations").text
	if (get_parent().get_node("Generating").button_pressed && !halt.contains("Finished")):
		get_parent().get_node("Timer4").paused = false
