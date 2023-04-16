(* Given two indices, i and k, the slice is the list containing the elements
 * between the i'th and k'th element of the original list (both limits included).
 * Start counting the elements with 0 (this is the way the List module numbers
 * elements). *)

fun slice ([], _, _) = []
  | slice (x::_,  _, 0) = [x]
  | slice (x::xs, 0, k) = x :: slice (xs, 0, k-1)
  | slice (_::xs, i, k) = slice (xs, i-1, k-1)

