datatype 'element mylist = NIL | CONS of 'element * 'element mylist

fun prod NIL = 1
  | prod (CONS (h, t)) = h * prod t

fun reverse NIL = []
| reverse (CONS(h,t)) = (reverse t) @ [h]  

fun append NIL b = b
| append (CONS(h,t)) b = CONS(h, append t b)
