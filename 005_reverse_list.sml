(* Reverse a list. *)

local
  fun aux ([],    ys) = ys
    | aux (x::xs, ys) = aux (xs, x::ys)
in
  fun rev xs = aux (xs, [])
end

