fun name (input: string option) : string =
    if isSome input
    then "One for " ^ valOf(input) ^ ", one for me."
    else "One for you, one for me."
