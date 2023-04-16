(* Construct a flat list containing the prime factors in ascending order. *)

fun factors n =
  let
    fun aux (acc, 1, _) = acc
      | aux (acc, n, d) = if n mod d = 0
                          then aux (d :: acc, n div d, d)
                          else aux (acc, n, d+1)
  in
    List.rev (aux ([], n, 2))
  end

