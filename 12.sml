fun pow(n:real, p) = 
	if p = 1
	then n
	else n * pow(n,p-1)