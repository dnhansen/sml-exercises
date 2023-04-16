(* Drop every N'th element from a list. *)

fun drop (xs, n) =
  let
    fun aux ([],    acc, _) = acc
      | aux (y::ys, acc, i) = if i = n
                              then aux (ys,      acc, 1)
                              else aux (ys, y :: acc, i + 1)
  in
    List.rev (aux (xs, [], 1))
  end

