extends TextEdit
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var targetSeats: int = self.text.to_int()
	targetSeats += randi_range(0, targetSeats*1.61803398875)
	targetSeats += randi_range(0, targetSeats*1.61803398875)
	targetSeats += randi_range(0, targetSeats*1.61803398875)
	targetSeats += randi_range(0, targetSeats*1.61803398875)
	targetSeats += randi_range(0, targetSeats*1.61803398875)
	self.text = str(targetSeats)
	
	#get_parent().get_node("Controls1").text = char(min(max(randi_range(2, 6),0),25)+65)
	#get_parent().get_node("Controls2").text = char(min(max(randi_range(2, 7),0),25)+65)
	#get_parent().get_node("Controls3").text = char(min(max(randi_range(1, 3),0),25)+65)
	#get_parent().get_node("Controls4").text = char(min(max(randi_range(1, 2),0),25)+65)
	#get_parent().get_node("Controls5").text = char(min(max(randi_range(3, 4),0),25)+65)
	#get_parent().get_node("Controls6").text = char(min(max(randi_range(5, 7),0),25)+65)
	
	#get_parent().get_node("Controls7").text = char(min(max(randi_range(13, 18),0),25)+65)
	#get_parent().get_node("Controls8").text = char(min(max(randi_range(0, 2),0),25)+65)
	#get_parent().get_node("Controls9").text = char(min(max(randi_range(9, 12),0),25)+65)
	#get_parent().get_node("Controls10").text = char(min(max(randi_range(22, 25),0),25)+65)
	#we've settled on a formula that maximizes peak intensity filtered to fletcher-munson: CHCBEH-YABU6
	#this produced really high scores across potential room sizes
	#was also where I left off before experimenting with randomizing everything at once, nearly.
