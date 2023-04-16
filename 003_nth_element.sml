(* Find the N'th element of a list. *)

fun nth_elem ([],    _) = NONE
  | nth_elem (x::_,  0) = SOME x
  | nth_elem (x::xs, n) = nth_elem (xs, n-1)

