extends Button
var delaysB: PackedInt32Array

func _pressed():
	get_parent().get_node("Timer6").paused = true
	delaysB.resize(37)
	delaysB.fill(1)
	delaysB[1] = get_parent().get_node("TextEdit1").text.to_int()
	delaysB[2] = get_parent().get_node("TextEdit2").text.to_int()
	delaysB[3] = get_parent().get_node("TextEdit3").text.to_int()
	delaysB[4] = get_parent().get_node("TextEdit4").text.to_int()
	delaysB[5] = get_parent().get_node("TextEdit5").text.to_int()
	delaysB[6] = get_parent().get_node("TextEdit6").text.to_int()
	delaysB[7] = get_parent().get_node("TextEdit7").text.to_int()
	delaysB[8] = get_parent().get_node("TextEdit8").text.to_int()
	delaysB[9] = get_parent().get_node("TextEdit9").text.to_int()
	delaysB[10] = get_parent().get_node("TextEdit10").text.to_int()
	delaysB[11] = get_parent().get_node("TextEdit11").text.to_int()
	delaysB[12] = get_parent().get_node("TextEdit12").text.to_int()
	delaysB[13] = get_parent().get_node("TextEdit13").text.to_int()
	delaysB[14] = get_parent().get_node("TextEdit14").text.to_int()
	delaysB[15] = get_parent().get_node("TextEdit15").text.to_int()
	delaysB[16] = get_parent().get_node("TextEdit16").text.to_int()
	delaysB[17] = get_parent().get_node("TextEdit17").text.to_int()
	delaysB[18] = get_parent().get_node("TextEdit18").text.to_int()
	delaysB[19] = get_parent().get_node("TextEdit19").text.to_int()
	delaysB[20] = get_parent().get_node("TextEdit20").text.to_int()
	delaysB[21] = get_parent().get_node("TextEdit21").text.to_int()
	delaysB[22] = get_parent().get_node("TextEdit22").text.to_int()
	delaysB[23] = get_parent().get_node("TextEdit23").text.to_int()
	delaysB[24] = get_parent().get_node("TextEdit24").text.to_int()
	delaysB[25] = get_parent().get_node("TextEdit25").text.to_int()
	delaysB[26] = get_parent().get_node("TextEdit26").text.to_int()
	delaysB[27] = get_parent().get_node("TextEdit27").text.to_int()
	delaysB[28] = get_parent().get_node("TextEdit28").text.to_int()
	delaysB[29] = get_parent().get_node("TextEdit29").text.to_int()
	delaysB[30] = get_parent().get_node("TextEdit30").text.to_int()
	delaysB[31] = get_parent().get_node("TextEdit31").text.to_int()
	delaysB[32] = get_parent().get_node("TextEdit32").text.to_int()
	delaysB[33] = get_parent().get_node("TextEdit33").text.to_int()
	delaysB[34] = get_parent().get_node("TextEdit34").text.to_int()
	delaysB[35] = get_parent().get_node("TextEdit35").text.to_int()
	delaysB[36] = get_parent().get_node("TextEdit36").text.to_int()
	var longest: int  = 0
	var shortest: int = 99999999999
	#do primary matrix calculation
	for a: int in range (1,7): #note the final value is the first NOT included number
		var ba: int = int(delaysB[a])
		for b: int in range (7,13):
			var bb: int = int(delaysB[b])
			for c: int in range (13,19):
				var bc: int = int(delaysB[c])
				for d: int in range (19, 25):
					var bd: int = int(delaysB[d])
					for e: int in range (25, 31):
						var be: int  = int(delaysB[e])
						for f: int in range (31, 37):
							var bf: int  = int(delaysB[f])
							var pos: int = ba+bb+bc+bd+be+bf
							if pos > longest:
								longest = pos
							if pos < shortest:
								shortest = pos
							#now we have the final delay time
	#rotate
	var rotated: PackedInt32Array
	rotated.resize(37)
	rotated.fill(0)
	rotated[1] = delaysB[21]
	rotated[2] = delaysB[16]
	rotated[3] = delaysB[11]
	rotated[4] = delaysB[6]
	rotated[5] = delaysB[1]
	rotated[6] = delaysB[22]
	rotated[7] = delaysB[17]
	rotated[8] = delaysB[12]
	rotated[9] = delaysB[7]
	rotated[10] = delaysB[2]
	rotated[11] = delaysB[23]
	rotated[12] = delaysB[18]
	rotated[13] = delaysB[13]
	rotated[14] = delaysB[8]
	rotated[15] = delaysB[3]
	rotated[16] = delaysB[24]
	rotated[17] = delaysB[19]
	rotated[18] = delaysB[14]
	rotated[19] = delaysB[9]
	rotated[20] = delaysB[4]
	rotated[21] = delaysB[25]
	rotated[22] = delaysB[20]
	rotated[23] = delaysB[15]
	rotated[24] = delaysB[10]
	rotated[25] = delaysB[5]
	#do primary matrix calculation
	for a: int in range (1,7):
		var ba: int = int(rotated[a])
		for b: int in range (7,13):
			var bb: int = int(rotated[b])
			for c: int in range (13,19):
				var bc: int = int(rotated[c])
				for d: int in range (19, 25):
					var bd: int = int(rotated[d])
					for e: int in range (25, 31):
						var be: int = int(rotated[e])
						for f: int in range (31, 37):
							var bf: int  = int(delaysB[f])
							var pos: int = ba+bb+bc+bd+be+bf
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
	suffix = suffix + "-" + get_parent().get_node("Controls3").text + get_parent().get_node("Controls4").text
	suffix = suffix + "-" + get_parent().get_node("Controls5").text + get_parent().get_node("Controls6").text
	suffix = suffix + " %04d-%02d-%02d" % [current_date_time["year"], current_date_time["month"], current_date_time["day"]]
	var taps: String = "const int delayA = "+str(delaysB[1])+"; "
	taps = taps+"const int delayB = "+str(delaysB[2])+"; "
	taps = taps+"const int delayC = "+str(delaysB[3])+"; "
	taps = taps+"const int delayD = "+str(delaysB[4])+"; "
	taps = taps+"const int delayE = "+str(delaysB[5])+"; "
	taps = taps+"const int delayF = "+str(delaysB[6])+"; "
	taps = taps+"const int delayG = "+str(delaysB[7])+"; "
	taps = taps+"const int delayH = "+str(delaysB[8])+"; "
	taps = taps+"const int delayI = "+str(delaysB[9])+"; "
	taps = taps+"const int delayJ = "+str(delaysB[10])+"; "
	taps = taps+"const int delayK = "+str(delaysB[11])+"; "
	taps = taps+"const int delayL = "+str(delaysB[12])+"; "
	taps = taps+"const int delayM = "+str(delaysB[13])+"; "
	taps = taps+"const int delayN = "+str(delaysB[14])+"; "
	taps = taps+"const int delayO = "+str(delaysB[15])+"; "
	taps = taps+"const int delayP = "+str(delaysB[16])+"; "
	taps = taps+"const int delayQ = "+str(delaysB[17])+"; "
	taps = taps+"const int delayR = "+str(delaysB[18])+"; "
	taps = taps+"const int delayS = "+str(delaysB[19])+"; "
	taps = taps+"const int delayT = "+str(delaysB[20])+"; "
	taps = taps+"const int delayU = "+str(delaysB[21])+"; "
	taps = taps+"const int delayV = "+str(delaysB[22])+"; "
	taps = taps+"const int delayW = "+str(delaysB[23])+"; "
	taps = taps+"const int delayX = "+str(delaysB[24])+"; "
	taps = taps+"const int delayY = "+str(delaysB[25])+"; "
	taps = taps+"const int delayZA = "+str(delaysB[26])+"; "
	taps = taps+"const int delayZB = "+str(delaysB[27])+"; "
	taps = taps+"const int delayZC = "+str(delaysB[28])+"; "
	taps = taps+"const int delayZD = "+str(delaysB[29])+"; "
	taps = taps+"const int delayZE = "+str(delaysB[30])+"; "
	taps = taps+"const int delayZF = "+str(delaysB[31])+"; "
	taps = taps+"const int delayZG = "+str(delaysB[32])+"; "
	taps = taps+"const int delayZH = "+str(delaysB[33])+"; "
	taps = taps+"const int delayZI = "+str(delaysB[34])+"; "
	taps = taps+"const int delayZJ = "+str(delaysB[35])+"; "
	taps = taps+"const int delayZK = "+str(delaysB[36])+"; //"
	taps = taps+str(int(shortest/44.1))+" to "+str(int(longest/44.1))+" ms, "+str(int(seats))+" seat "+venue+"  \n//"+str(int(seats))+get_parent().get_node("MatrixName").text+suffix
	
	taps = taps + "\n//Orange: MaxRMS louder -10.25 dB, Red: louder -8.99 dB, Green: TP Slew quieter -6.25 dB,"
	taps = taps + "\n//Blue: GlobalLUFS louder -10.75 dB, Purple: MaxRMS quieter -9.99 dB, 6x6 matrix"
	
	get_parent().get_node("Code").text = taps
	#stopped = true
	get_parent().get_node("search5").disabled = false
	get_parent().get_node("halt5").disabled = false
	get_parent().get_node("search4").disabled = false
	get_parent().get_node("halt4").disabled = false
	get_parent().get_node("search3").disabled = false
	get_parent().get_node("halt3").disabled = false
	var billion: int = get_parent().get_node("totalIterations").text.to_int()
	var million: int = get_parent().get_node("sinceIterations").text.to_int()
	if (get_parent().get_node("Generating").button_pressed && billion < 16000000 && million < 1000000):
		get_parent().get_node("Timer6").paused = false

func format_number(number: int) -> String:
	# Handle negative numbers by adding the "minus" sign in advance, as we discard it
	# when looping over the number.
	var formatted_number := "-" if sign(number) == -1 else ""
	var index := 0
	var number_string := str(abs(number))
	for digit in number_string:
		formatted_number += digit
		var counter := number_string.length() - index
		if counter >= 2 and counter % 3 == 1:
			formatted_number += ","
		index += 1
	return formatted_number
