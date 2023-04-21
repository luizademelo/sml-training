fun myfoldl f acc nil = acc 
| myfoldl f acc (h::t) =  myfoldl f (f(h,acc)) t