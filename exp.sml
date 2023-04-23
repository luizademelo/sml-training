datatype exp = NUM of int |
SUM of exp * exp |
MUL of exp * exp |
UNMINUS of exp

fun interpret (NUM(x)) = x
| interpret (SUM(x, y)) = (interpret x) + (interpret y)
| interpret (MUL(x, y)) = (interpret x) * (interpret y)
| interpret (UNMINUS x) = interpret(MUL(NUM(~1), x))	
