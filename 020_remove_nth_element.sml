(* Remove the K'th element from a list. *)

fun remove_at (_, []) = []
  | remove_at (0, _::xs) = xs
  | remove_at (k, x::xs) = x :: remove_at (k-1, xs)

