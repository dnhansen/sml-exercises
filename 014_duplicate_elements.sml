(* Duplicate the elements of a list. *)

fun duplicate [] = []
  | duplicate (x :: xs) = x :: x :: duplicate xs

(* Tail-recursive solution *)

local
  fun aux (acc, []) = acc
    | aux (acc, x :: xs) = aux (x :: x :: acc, xs)
in
  fun duplicate' xs = List.rev (aux ([], xs))
end

