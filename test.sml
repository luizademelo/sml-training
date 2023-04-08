fun sort3 (l:real * real * real) = 
    let 
        val (a,b,c) = l
    in 
        if a < b andalso a < c 
            then 
            if b < c 
            then [a,b,c]
            else [a,c,b]
        else if b < a andalso b < c
            then 
            if a < c
            then [b,a,c]
            else [b,c,a]
        else
            if b < a
            then [c,b,a]
            else [c,a,b]
    end 