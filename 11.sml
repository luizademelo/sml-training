fun cycle (l, n) = 
	if n = 0 
	then l 
	else cycle((tl l) @ [hd l], n-1)