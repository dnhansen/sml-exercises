(* Rotate a list N places to the left. *)

fun split (xs, n) =
  let
    fun aux ([], acc, _) = (List.rev acc, [])
      | aux (y::ys, acc, i) = if i = n
                              then (List.rev acc, y::ys)
                              else aux (ys, y :: acc, i + 1)
  in
    aux (xs, [], 0)
  end

fun rotate (xs, n) =
  let
    val i = n mod List.length xs
    val (front, back) = split (xs,i)
  in
    back @ front
  end

