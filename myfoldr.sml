fun myfoldr f acc nil = acc
  | myfoldr f acc (h::t) = f(h,	(myfoldr f acc t)) 