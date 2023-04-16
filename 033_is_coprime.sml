(* Determine whether two positive integer numbers are coprime. *)

fun gcd (a, 0) = a
  | gcd (a, b) = gcd (b, a mod b)

fun coprime (a, b) = gcd (a, b) = 1

