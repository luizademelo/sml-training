fun repeats ([]) = false
	| repeats (h::t) = if null(t) then false 
						else if h = hd t then true else repeats(t)
