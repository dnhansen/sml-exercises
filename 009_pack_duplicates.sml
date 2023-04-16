(* Pack consecutive duplicates of list elements into sublists. *)

local
  fun aux (current, acc, [])        = []
    | aux (current, acc, [x])       = (x :: current) :: acc
    | aux (current, acc, x::x'::xs) = if x = x'
                                      then aux (x :: current, acc, x'::xs)
                                      else aux ([],
                                                (x :: current) :: acc,
                                                x'::xs)
in
  fun pack xs = List.rev (aux ([], [], xs))
end

