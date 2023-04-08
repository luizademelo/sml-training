fun eval (l, x:real) = 
	let
		fun pos([], _) = 0.0
		| pos(l, e:real) = if not (hd l > e) andalso not(hd l < e then 0.0
							else 1.0 + pos(tl l, e)

		fun pow(n:real, e) = if not (e < 0.0) andalso not (e > 0.0) then 1.0
						else n * pow(n, e-1.0)
		fun calc([]) = 0.0
		| calc(h::t) = 
			let
				val p = pos(l, h)
			in 
				h * pow(x, p) + calc(t)
			end
	in
		calc(l)
	end

	