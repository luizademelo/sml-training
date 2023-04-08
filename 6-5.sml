fun icmp (a, b) = a < b

fun partition (pivot, nil, f) = (nil,nil)
  | partition (pivot, first :: others, f) =
       let
         val (smalls, bigs) =
           partition(pivot, others,f )
       in
         if f(first, pivot)
           then (first::smalls, bigs)
           else (smalls, first::bigs)
       end;

fun qsort (nil, f) = nil
  | qsort (first::rest, f) =
      let
        val (smalls, bigs) = partition(first,rest, f)
      in
        qsort(smalls, f) @ [first] @ qsort(bigs, f)
      end