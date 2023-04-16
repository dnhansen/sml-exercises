(* Find the number of elements of a list. *)

fun length []      = 0
  | length (_::xs) = 1 + length xs

(* Tail-recursive solution *)

local
  fun aux ([],      n) = n
    | aux (_::xs, n) = aux (xs, n+1)
in
  fun length' xs = aux (xs, 0)
end

