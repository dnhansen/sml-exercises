(* Run-length encoding of a list. *)

local
  fun aux (count, acc, []) = acc
    | aux (count, acc, [x]) = (count+1, x) :: acc
    | aux (count, acc, (x::x'::xs)) = if x = x'
                                      then aux (count+1, acc, x'::xs)
                                      else aux (0, (count+1, x) :: acc, x'::xs)
in
  fun encode xs = List.rev (aux (0, [], xs))
end

