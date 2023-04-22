datatype number = Int of int | Real of real

fun plus (Int x) (Int y) = Int(x+y)
| plus (Real x) (Real y) = Real(x+y)
| plus (Real x) (Int y) = Int((Real.trunc x) + y)
| plus (Int x) (Real y) = Int(x + (Real.trunc y))