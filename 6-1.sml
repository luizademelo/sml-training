fun member (e, []) = false
  | member (e, x::xs) = if x = e then true else member (e, xs)