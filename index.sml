fun index _ nil = []
| index i (h::t) = (i,h)::index (i+1) t