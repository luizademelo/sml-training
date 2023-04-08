fun sqsum n = 
	if n = 0
	then 0 
	else 
		n*n + sqsum(n-1)
	