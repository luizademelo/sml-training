fun isIn ([],e) = false
 | isIn (h::t, e) = if h = e then true else isIn(t, e)

fun union(l1, l2) = 
	let 
		val res = []
		fun check(l, e) = 
			if isIn(l, e) then false 
			else true

		fun add([], res) = res
		| add(h::t, res) = if check(res, h)
					then res @ [h] @  add(t, res)
					else res @ add(t, res)

		val res1 = add(l1 @ l2, res)
	in 
		res1
	end