fun inv [] l2 = l2
| inv (h::t) l2 =  
  let 
    val l = h::l2 
  in 
    inv t l
  end                                                                                                                                      