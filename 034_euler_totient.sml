(* Calculate Euler's Totient Function phi(m) *)

fun gcd (a, 0) = a
  | gcd (a, b) = gcd (b, a mod b)

fun coprime (a, b) = gcd (a, b) = 1

fun phi m =
  let
    fun aux (acc, 0) = acc
      | aux (acc, r) = if coprime (m, r)
                       then aux (acc+1, r-1)
                       else aux (acc, r-1)
  in
    aux (0, m-1)
  end

