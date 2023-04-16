(* Eliminate consecutive duplicates of list elements. *)

fun compress [] = []
  | compress [x] = [x]
  | compress (x::y::xs) = if x = y
                          then compress (x::xs)
                          else x :: compress (y::xs)

