(* 目的: 0から受け取った自然数までの2乗の和を求める *)
(* sum_of_squares: int -> int *)
let rec sum_of_squares n =
  if n = 0 then 0
  else n * n + sum_of_squares (n - 1)

let test1 = sum_of_squares 0 = 0
let test2 = sum_of_squares 1 = 1
let test3 = sum_of_squares 2 = 5
let test3 = sum_of_squares 3 = 14
let test4 = sum_of_squares 4 = 30