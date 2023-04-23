datatype 'data tree = Empty | Node of 'data tree * 'data * 'data tree

fun revTree (Node(Empty, data, Empty)) = Node(Empty, data, Empty)
| revTree (Node(Empty, data, right)) = Node(revTree right, data, Empty)
| revTree (Node(left, data, Empty)) = Node(Empty, data, revTree left) 
| revTree (Node(left, data, right)) = Node(right, data, revTree left)

fun appendall Empty = []
| appendall (Node(Empty, xs, Empty)) = [xs]
| appendall (Node(left, xs, Empty)) = appendall left @ [xs]
| appendall (Node(Empty, xs, right)) = [xs] @ appendall right 
| appendall (Node (t1, xs, t2)) = appendall t1 @ [xs] @ appendall t2

fun isComplete (Node(Empty, data, Empty)) = true
| isComplete (Node(Empty, data, right)) = false 
| isComplete (Node(left, data, Empty)) = false
| isComplete (Node(left, data, right)) = (isComplete left) andalso (isComplete right)

fun makeBST (h::t) f = if null t then Node(Empty, h, Empty) 
					else if f(h,hd(t)) = true then Node((makeBST t f), h, Empty)
					else Node(Empty, h, makeBST t f)

fun searchBST Empty _  _= false
| searchBST (Node(left, data, right)) f e = if e = data then true
										else if f(e,data) = true then false orelse (searchBST left f e)
										else (searchBST right f e)
