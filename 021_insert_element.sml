(* Insert an Element at a Given Position Into a List. If the position is larger
 * or equal to the length of the list, insert the element at the end. *)

fun insert_at (elem, 0, xs) = elem :: xs
  | insert_at (elem, _, []) = [elem]
  | insert_at (elem, k, x::xs) = x :: insert_at (elem, k-1, xs)

