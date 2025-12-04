(* nまでの整数列をかえす *)
(* enumerate -> int -> int list *)
let rec enumerate n =
  if n = 0 then [] 
  else n :: enumerate(n - 1)

let rec fold_right f lst init = match lst with
  [] -> init
  | first :: rest -> f first (fold_right f rest init)

(* 目的:1から受け取った自然数までの合計を求める*)
(* one_to_n -> int -> int*)
let one_to_n n = fold_right (+) (enumerate n) 0

let test1 = one_to_n 1 = 1
let test2 = one_to_n 2 = 3
let test3 = one_to_n 100 = 5050