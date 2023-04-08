fun max l = 
	if null l 
	then 0 
	else 
		if hd l > max(tl l)
		then hd l 
		else max(tl l)
	
