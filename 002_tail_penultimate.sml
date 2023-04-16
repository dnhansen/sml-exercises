(* Find the last but one (last and penultimate) elements of a list. *)

fun last_two []      = NONE
  | last_two [_]     = NONE
  | last_two [x,y]   = SOME [x,y]
  | last_two (_::xs) = last_two xs

