(* Write a function 
       last : 'a list -> 'a option
   that returns the last element of a list *)

fun last [] = NONE
  | last [x] = SOME x
  | last (_::xs) = last xs

