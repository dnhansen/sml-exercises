(* Create a List Containing All Integers Within a Given Range. If first argument
 * is greater than second, produce a list in decreasing order. *)

fun range (a,b) =
  let
    fun aux (low, high) = if low = high
                          then [low]
                          else low :: aux (low+1, high)
  in
    if a > b
    then List.rev (aux (b,a))
    else aux (a,b)
  end

(* Tail-recursive solution *)

fun range' (a,b) =
  let
    fun aux (acc, low, high) = if low <= high
                               then aux (high :: acc, low, high-1)
                               else acc
  in
    if a > b
    then List.rev (aux ([], b, a))
    else aux ([], a, b)
  end

