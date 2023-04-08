fun  isPrime n = 
  if n = 1 orelse n = 0
  then false
  else 
  let 
    fun divisors (n,d) = 
      if d = 1 then 0 
      else  
        if(n mod d = 0) then 1 + divisors(n, d-1)
        else 0 + divisors(n, d-1)
  in 
    if divisors(n, n-1) = 0 then true
    else false
  end

fun select (l, f) =
  if null l then nil
  else 
  if f(hd l) then [hd l] @ select(tl l, f)
  else select(tl l, f)