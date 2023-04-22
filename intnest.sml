datatype intnest = INT of int | LIST of intnest list

fun addUp (INT x) = x
  | addUp (LIST []) = 0
  | addUp (LIST (h::t)) = addUp h + addUp (LIST t)
