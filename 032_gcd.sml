(* Determine the greatest common divisor of two positive integer numbers. *)

fun gcd (a, 0) = a
  | gcd (a, b) = gcd (b, a mod b)

