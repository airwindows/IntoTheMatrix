extends Button
var begins: PackedInt32Array = [2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,67,71,73,79,83,89,97,101,103,107,109,113,127,131,137,139,149,151,157,163,167,173,179,181,191,193,197,199,211,223,227,229,233,239,241,251,257,263,269,271,277,281,283,293,307,311,313,317,331,337,347,349,353,359,367,373,379,383,389,397,401,409,419,421,431,433,439,443,449,457,461,463,467,479,487,491,499,503,509,521,523,541,547,557,563,569,571,577,587,593,599,601,607,613,617,619,631,641,643,647,653,659,661,673,677,683,691,701,709,719,727,733,739,743,751,757,761,769,773,787,797,809,811,821,823,827,829,839,853,857,859,863,877,881,883,887,907,911,919,929,937,941,947,953,967,971,977,983,991,997,1009,1013,1019,1021,1031,1033,1039,1049,1051,1061,1063,1069,1087,1091,1093,1097,1103,1109,1117,1123,1129,1151,1153,1163,1171,1181,1187,1193,1201,1213,1217,1223,1229,1231,1237,1249,1259,1277,1279,1283,1289,1291,1297,1301,1303,1307,1319,1321,1327,1361,1367,1373,1381,1399,1409,1423,1427,1429,1433,1439,1447,1451,1453,1459,1471,1481,1483,1487,1489,1493,1499,1511,1523,1531,1543,1549,1553,1559,1567,1571,1579,1583,1597,1601,1607,1609,1613,1619,1621,1627,1637,1657,1663,1667,1669,1693,1697,1699,1709,1721,1723,1733,1741,1747,1753,1759,1777,1783,1787,1789,1801,1811,1823,1831,1847,1861,1867,1871,1873,1877,1879,1889,1901,1907,1913,1931,1933,1949,1951,1973,1979,1987,1993,1997,1999,2003,2011,2017,2027,2029,2039,2053,2063,2069,2081,2083,2087,2089,2099,2111,2113,2129,2131,2137,2141,2143,2153,2161,2179,2203,2207,2213,2221,2237,2239,2243,2251,2267,2269,2273,2281,2287,2293,2297,2309,2311,2333,2339,2341,2347,2351,2357,2371,2377,2381,2383,2389,2393,2399,2411,2417,2423,2437,2441,2447,2459,2467,2473,2477,2503,2521,2531,2539,2543,2549,2551,2557,2579,2591,2593,2609,2617,2621,2633,2647,2657,2659,2663,2671,2677,2683,2687,2689,2693,2699,2707,2711,2713,2719,2729,2731,2741,2749,2753,2767,2777,2789,2791,2797,2801,2803,2819,2833,2837,2843,2851,2857,2861,2879,2887,2897,2903,2909,2917,2927,2939,2953,2957,2963,2969,2971,2999,3001]#,3011,3019,3023,3037,3041,3049,3061,3067,3079,3083,3089,3109,3119,3121,3137,3163,3167,3169,3181,3187,3191,3203,3209,3217,3221,3229,3251,3253,3257,3259,3271,3299,3301,3307,3313,3319,3323,3329,3331,3343,3347,3359,3361,3371,3373,3389,3391,3407,3413,3433,3449,3457,3461,3463,3467,3469,3491,3499,3511,3517,3527,3529,3533,3539,3541,3547,3557,3559,3571,3581,3583,3593,3607,3613,3617,3623,3631,3637,3643,3659,3671,3673,3677,3691,3697,3701,3709,3719,3727,3733,3739,3761,3767,3769,3779,3793,3797,3803,3821,3823,3833,3847,3851,3853,3863,3877,3881,3889,3907,3911,3917,3919,3923,3929,3931,3943,3947,3967,3989,4001,4003,4007,4013,4019,4021,4027,4049,4051,4057,4073,4079,4091,4093,4099,4111,4127,4129,4133,4139,4153,4157,4159,4177,4201,4211,4217,4219,4229,4231,4241,4243,4253,4259,4261,4271,4273,4283,4289,4297,4327,4337,4339,4349,4357,4363,4373,4391,4397,4409,4421,4423,4441,4447,4451,4457,4463,4481,4483,4493,4507,4513,4517,4519,4523,4547,4549,4561,4567,4583,4591,4597,4603,4621,4637,4639,4643,4649,4651,4657,4663,4673,4679,4691,4703,4721,4723,4729,4733,4751,4759,4783,4787,4789,4793,4799,4801,4813,4817,4831,4861,4871,4877,4889,4903,4909,4919,4931,4933,4937,4943,4951,4957,4967,4969,4973,4987,4993,4999,5003,5009,5011,5021,5023,5039,5051,5059,5077,5081,5087,5099,5101,5107,5113,5119,5147,5153,5167,5171,5179,5189,5197,5209,5227,5231,5233,5237,5261,5273,5279,5281,5297,5303,5309,5323,5333,5347,5351,5381,5387,5393,5399,5407,5413,5417,5419,5431,5437,5441,5443,5449,5471,5477,5479,5483,5501,5503,5507,5519,5521,5527,5531,5557,5563,5569,5573,5581,5591,5623,5639,5641,5647,5651,5653,5657,5659,5669,5683,5689,5693,5701,5711,5717,5737,5741,5743,5749,5779,5783,5791,5801,5807,5813,5821,5827,5839,5843,5849,5851,5857,5861,5867,5869,5879,5881,5897,5903,5923,5927,5939,5953,5981,5987,6007,6011,6029,6037,6043,6047,6053,6067,6073,6079,6089,6091,6101,6113,6121,6131,6133,6143,6151,6163,6173,6197,6199,6203,6211,6217,6221,6229,6247,6257,6263,6269,6271,6277,6287,6299,6301,6311,6317,6323,6329,6337,6343,6353,6359,6361,6367,6373,6379,6389,6397,6421,6427,6449,6451,6469,6473,6481,6491,6521,6529,6547,6551,6553,6563,6569,6571,6577,6581,6599,6607,6619,6637,6653,6659,6661,6673,6679,6689,6691,6701,6703,6709,6719,6733,6737,6761,6763,6779,6781,6791,6793,6803,6823,6827,6829,6833,6841,6857,6863,6869,6871,6883,6899,6907,6911,6917,6947,6949,6959,6961,6967,6971,6977,6983,6991,6997,7001,7013,7019,7027,7039,7043,7057,7069,7079,7103,7109,7121,7127,7129,7151,7159,7177,7187,7193,7207,7211,7213,7219,7229,7237,7243,7247,7253,7283,7297,7307,7309,7321,7331,7333,7349,7351,7369,7393,7411,7417,7433,7451,7457,7459,7477,7481,7487,7489,7499,7507,7517,7523,7529,7537,7541,7547,7549,7559,7561,7573,7577,7583,7589,7591,7603,7607,7621,7639,7643,7649,7669,7673,7681,7687,7691,7699,7703,7717,7723,7727,7741,7753,7757,7759,7789,7793,7817,7823,7829,7841,7853,7867,7873,7877,7879,7883,7901,7907,7919]
#there are 431 primes here
var gold: PackedInt32Array = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
var silver: PackedInt32Array = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
var bronze: PackedInt32Array = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
var display: Image
var total: int = 0
var since: int = 0
# Called when the node enters the scene tree for the first time.

func _pressed():
	get_parent().get_node("search6").disabled = true
	get_parent().get_node("halt6").disabled = true
	get_parent().get_node("search5").disabled = true
	get_parent().get_node("halt5").disabled = true
	get_parent().get_node("search3").disabled = true
	get_parent().get_node("halt3").disabled = true
	get_parent().get_node("Timer4").start()
	get_parent().get_node("Timer4").paused = true
	var arraySize: int = (sqrt(get_parent().get_node("targetSeats").text.to_float())*400.0)
	display = Image.create(512, (arraySize/785)+1, false, Image.FORMAT_RGBAH)
	var timing: float = Time.get_unix_time_from_system()
	var fireRedraw: bool = false
	var dispDelays: PackedFloat32Array
	dispDelays.resize(arraySize)
	dispDelays.fill(0.0)
	var spacings: PackedFloat32Array
	spacings.resize(arraySize)
	spacings.fill(0.0)
	var angleChange: PackedFloat32Array
	angleChange.resize(arraySize)
	angleChange.fill(0.0)
	
	var drySample: float = 0.0
	var wetSample: float = 0.0
	var adjustGreen: PackedFloat32Array
	adjustGreen.resize(arraySize)
	drySample = get_parent().get_node("Controls1").text.unicode_at(0)-65.0
	wetSample = get_parent().get_node("Controls2").text.unicode_at(0)-65.0
	for t: int in range(0,arraySize):
		var x: float = (float(t)/float(arraySize))
		x = 1.0-pow(1.0-x,2)
		adjustGreen[t] = ((drySample*(1.0-x))+(wetSample*x))*sqrt(arraySize)
	var adjustRed: PackedFloat32Array
	adjustRed.resize(arraySize)
	drySample = get_parent().get_node("Controls3").text.unicode_at(0)-65.0
	wetSample = get_parent().get_node("Controls4").text.unicode_at(0)-65.0
	for t: int in range(0,arraySize):
		var x: float = (float(t)/float(arraySize))
		x = 1.0-pow(1.0-x,2)
		adjustRed[t] = ((drySample*(1.0-x))+(wetSample*x))*(256.0/sqrt(arraySize))
	var adjustBlue: PackedFloat32Array
	adjustBlue.resize(arraySize)
	drySample = get_parent().get_node("Controls5").text.unicode_at(0)-65.0
	wetSample = get_parent().get_node("Controls6").text.unicode_at(0)-65.0
	for t: int in range(0,arraySize):
		var x: float = (float(t)/float(arraySize))
		x = 1.0-pow(1.0-x,2)
		adjustBlue[t] = (drySample*(1.0-x)) + (wetSample*x)
	
	var delays: PackedInt32Array
	delays.resize(17)
	var rotated: PackedInt32Array
	var most: float = 0.0
	var doPrintout: float = get_parent().get_node("prevScoreTwo").text.to_float()
	rotated.resize(17)
	rotated.fill(0)
	var iterations: int = get_parent().get_node("Iterations").text.to_int()
	total += iterations
	since += iterations
	get_parent().get_node("totalIterations").text = str(total)
	get_parent().get_node("sinceIterations").text = str(since)
	for dummy: int in range(0,iterations):
		var roomsize: float = sqrt(get_parent().get_node("Seats").text.to_float())/24.0 #seats, in K
		if (roomsize > 4.31):
			roomsize = 4.31
		var greenAmt: float = 0.0
		var redAmt: float = 0.0
		var blueAmt: float = 0.0
		for entries: int in range(0,17):
			var select: int = randi()>>(20+(since>>16))
			#shift 23 seems to produce a decent amount of randomness as it goes
			#less shift means increasing amounts of randomness, which will help kickstart things
			if (select < 7 || select > begins[roomsize*100]):
				if (select % 4 < 2):
					delays[entries] = gold[entries] #0 or 1 uses Gold
				else:
					if (select % 4 < 3):
						delays[entries] = silver[entries] #2 uses Silver
					else:
						delays[entries] = bronze[entries] #3 uses Bronze
				if (delays[entries] == 0):
					delays[entries] = (select % begins[roomsize*100])+3
			else:
				delays[entries] = select #use the number directly if we can't
				
		doPrintout = get_parent().get_node("prevScoreTwo").text.to_float()
		var brightness: float = 0.2
		most = 0.0
		var longest: int = 0
		var shortest: int = 99999999999
		#do primary matrix calculation
		dispDelays.fill(0.0)
		for a: int in range (1,5):
			var da: int = int(delays[a])
			for b: int in range (5,9):
				var db: int = int(delays[b])
				for c: int in range (9,13):
					var dc: int = int(delays[c])
					for d: int in range (13,17):
						var dd: int = int(delays[d])
						if (longest < da+db+dc+dd):
							longest =  da+db+dc+dd #now we have the final delay time
						if (shortest >  da+db+dc+dd):
							shortest =  da+db+dc+dd #now we have the final delay time
						var x: int = da+db+dc+dd
						if (x < arraySize):
							dispDelays[x] += brightness
							most += (dispDelays[x]*dispDelays[x]*adjustGreen[x])
							#green is how much the stacked echoes stack
		#rotate
		rotated[1] = delays[13]
		rotated[2] = delays[9]
		rotated[3] = delays[5]
		rotated[4] = delays[1]
		rotated[5] = delays[14]
		rotated[6] = delays[10]
		rotated[7] = delays[6]
		rotated[8] = delays[2]
		rotated[9] = delays[15]
		rotated[10] = delays[11]
		rotated[11] = delays[7]
		rotated[12] = delays[3]
		rotated[13] = delays[16]
		rotated[14] = delays[12]
		rotated[15] = delays[8]
		rotated[16] = delays[4]
		#do cross matrix calculation
		for a: int in range (1,5):
			var da: int = int(rotated[a])
			for b: int in range (5,9):
				var db: int = int(rotated[b])
				for c: int in range (9,13):
					var dc: int = int(rotated[c])
					for d: int in range (13,17):
						var dd: int = int(rotated[d])
						if (longest < da+db+dc+dd):
							longest = da+db+dc+dd #now we have the final delay time
						if (shortest > da+db+dc+dd):
							shortest = da+db+dc+dd #now we have the final delay time
						var x: int = da+db+dc+dd
						dispDelays[x] += brightness
						most += (dispDelays[x]*dispDelays[x]*adjustGreen[x])
						#green is how much the stacked echoes stack
		greenAmt = most
		#now, do another array in which we're measuring spacings between
		#the active taps of the first delay. We want these spacings to
		#be as irregular as possible, so just like stacking up delay taps
		#is bad, having 'em all spaced the same distance is bad.
		spacings.fill(0.0)
		var zeroRun: int = 0
		var echoRun: int = 0
		for t: int in range(2,arraySize-1,2):
			if (dispDelays[t] == 0.0):
				zeroRun += 1
				spacings[echoRun] += brightness
				spacings[echoRun] *= (sqrt(echoRun*0.5))
				echoRun = 0
			if (dispDelays[t] > 0.0):
				echoRun += 1
				spacings[zeroRun] += brightness
				spacings[zeroRun] *= (sqrt(zeroRun*0.5))
				zeroRun = 0
		#here's the thing though: what we should do is measure every departure from the previous
		#spacings, in a 'slew measuring' way, because the evenest distribution will be best.
		#These have spacings of TWO because we are using prime numbers for everything: only odd.
		for t: int in range(2,arraySize-1,2):
			most += (abs(spacings[t]-spacings[t-2])*adjustRed[t])
		redAmt = most - greenAmt
		#now, do a third array for the blue channel that just checks whether
		#the angle has changed, which will be active when there's dense delay
		#returns like in a 5x5. Will be about the same for a 3x3
		angleChange.fill(0.0)
		for t: int in range(2,arraySize-1,2):
			angleChange[t] = (dispDelays[t] - dispDelays[t-2]) * (dispDelays[t] - dispDelays[t-2])
			most += (angleChange[t]*adjustBlue[t])
		blueAmt = most - (greenAmt+redAmt)
		
		var milliseconds: float = float((shortest+longest)/2.0)/44.1
		if (most > doPrintout): #we want the lowest number, so this part is failure to beat the best
			#since we are not in the zone, let's also tune the seat number
			var seats: int = int((milliseconds/2.9)*(milliseconds/2.9))
			var targetseats: float = get_parent().get_node("targetSeats").text.to_float()
			var editseats: float =  get_parent().get_node("Seats").text.to_float()
			if seats > targetseats:
				get_parent().get_node("Seats").text = str(int(abs(editseats-8)))
			if seats < targetseats:
				get_parent().get_node("Seats").text = str(int(editseats+2))
		else: #it was the lowest yet, so we have a new best
			doPrintout = most
			fireRedraw = true
			
			get_parent().get_node("TextEdit1").text = str(delays[1])
			get_parent().get_node("TextEdit2").text = str(delays[2])
			get_parent().get_node("TextEdit3").text = str(delays[3])
			get_parent().get_node("TextEdit4").text = str(delays[4])
			get_parent().get_node("TextEdit5").text = ""
			get_parent().get_node("TextEdit6").text = ""
			get_parent().get_node("TextEdit7").text = str(delays[5])
			get_parent().get_node("TextEdit8").text = str(delays[6])
			get_parent().get_node("TextEdit9").text = str(delays[7])
			get_parent().get_node("TextEdit10").text = str(delays[8])
			get_parent().get_node("TextEdit11").text = ""
			get_parent().get_node("TextEdit12").text = ""
			get_parent().get_node("TextEdit13").text = str(delays[9])
			get_parent().get_node("TextEdit14").text = str(delays[10])
			get_parent().get_node("TextEdit15").text = str(delays[11])
			get_parent().get_node("TextEdit16").text = str(delays[12])
			get_parent().get_node("TextEdit17").text = ""
			get_parent().get_node("TextEdit18").text = ""
			get_parent().get_node("TextEdit19").text = str(delays[13])
			get_parent().get_node("TextEdit20").text = str(delays[14])
			get_parent().get_node("TextEdit21").text = str(delays[15])
			get_parent().get_node("TextEdit22").text = str(delays[16])
			get_parent().get_node("TextEdit23").text = ""
			get_parent().get_node("TextEdit24").text = ""
			get_parent().get_node("TextEdit25").text = ""
			get_parent().get_node("TextEdit26").text = ""
			get_parent().get_node("TextEdit27").text = ""
			get_parent().get_node("TextEdit28").text = ""
			get_parent().get_node("TextEdit29").text = ""
			get_parent().get_node("TextEdit30").text = ""
			get_parent().get_node("TextEdit31").text = ""
			get_parent().get_node("TextEdit32").text = ""
			get_parent().get_node("TextEdit33").text = ""
			get_parent().get_node("TextEdit34").text = ""
			get_parent().get_node("TextEdit35").text = ""
			get_parent().get_node("TextEdit36").text = ""
			for entries: int in range(0,17):
				bronze[entries] = silver[entries]
				silver[entries] = bronze[entries]
				gold[entries] = delays[entries]
				#podium of the three best yet
			
			var editseats: float =  get_parent().get_node("Seats").text.to_float()
			display.fill(Color.BLACK)
			var maxGreen: float = 0.0
			var maxBlue: float = 0.0
			for t: int in range(1,arraySize-1):
				if (maxGreen < dispDelays[t]):
					maxGreen = dispDelays[t]
				if (maxBlue < angleChange[t]):
					maxBlue = angleChange[t]
			for t: int in range(1,arraySize-1,2):
				var r: float = 256.0-spacings[t]
				if (spacings[t] == 0.0):
					r = 0.0
				var g: float = sqrt(dispDelays[t+1] / maxGreen) * 256.0
				var b: float = sqrt(angleChange[t+1] / maxBlue) * 256.0
				display.set_pixel(t%512,(t/512),Color.from_rgba8(r,g,b))
				display.set_pixel((t%512)+1,(t/512),Color.from_rgba8(r,g,b))
			#that has drawn the reverb on the display, now for the chart
			greenAmt = (greenAmt/most)*512.0
			redAmt = (redAmt/most)*512.0
			blueAmt = (blueAmt/most)*512.0
			for t: int in range(0,greenAmt):
				var samplePosition: int = t+(((longest-shortest)/2)+shortest)
				if (samplePosition < arraySize):
					display.set_pixel(t,(arraySize/785),Color.from_rgba8(0,pow((dispDelays[samplePosition]+dispDelays[samplePosition+1])/maxGreen,2.0)*192.0,0))
			for t: int in range(greenAmt,greenAmt+redAmt):
				display.set_pixel(t,(arraySize/785),Color.from_rgba8(128,0,0))
			for t: int in range(greenAmt+redAmt,greenAmt+redAmt+blueAmt):
				display.set_pixel(t,(arraySize/785),Color.from_rgba8(0,0,256))
			since = 0
			get_parent().get_node("sinceIterations").text = str(since)
			var seats: int = int((milliseconds/2.9)*(milliseconds/2.9))
			var targetseats: float =  get_parent().get_node("targetSeats").text.to_float()
			get_parent().get_node("prevScoreTwo").text = str(most*(1.0+(abs((seats-targetseats)/targetseats)/sqrt(sqrt(sqrt(total))))))
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
			get_parent().get_node("TextureRect").scale.x = 1.0
			get_parent().get_node("TextureRect").scale.y = 1.0
			get_parent().get_node("TextureRect").texture = ImageTexture.create_from_image(display)
	get_parent().get_node("Iterations").text = str(floori(sqrt(65536.0/(Time.get_unix_time_from_system()-timing))))
	var billion: int = get_parent().get_node("totalIterations").text.to_int()
	var million: int = get_parent().get_node("sinceIterations").text.to_int()
	if (fireRedraw || billion > 160000000 || million > 1000000): #in the loop, we've updated with a new best
		get_parent().get_node("halt4")._pressed()
	else:
		get_parent().get_node("Timer4").paused = false
	
