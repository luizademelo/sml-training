fun mymap f nil = []
 | mymap f (h::t) = (f h)::mymap f t  