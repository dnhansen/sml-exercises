(* Replicate the elements of a list a given number of times. *)

fun replicate (xs, n) =
  let
    fun aux (_, acc, []) = acc
      | aux (0, acc, _ :: ys) = aux (n, acc, ys)
      | aux (left, acc, y :: ys) = aux (left-1, y :: acc, y :: ys)
  in
    List.rev (aux (n, [], xs))
  end

