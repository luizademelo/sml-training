fun isLeapYear year =
    if year mod 4 = 0 andalso year mod 400 = 0 andalso year mod 100 = 0
    then true 
    else if year mod 4 = 0 andalso year mod 100 = 0
    then false
    else if year mod 4 = 0 
    then true 
    else false 
