(* Split a list into two parts; the length of the first part is given. *)

fun split (xs, n) =
  let
    fun aux ([], acc, _) = (List.rev acc, [])
      | aux (y::ys, acc, i) = if i = n
                              then (List.rev acc, y::ys)
                              else aux (ys, y :: acc, i + 1)
  in
    aux (xs, [], 0)
  end

