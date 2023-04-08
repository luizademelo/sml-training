fun less (e, []) = []
	| less (e, h::t) = if h < e then [h] @ less(e, t)
		else less(e, t)  