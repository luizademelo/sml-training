fun del3 l = 
    let 
        val a = hd l 
        val b = hd (tl l)
    in
        a::b::(tl(tl(tl l)))
    end