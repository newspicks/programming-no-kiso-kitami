(* nまでの整数列をかえす *)
(* enumerate -> int -> int list *)
let rec enumerate n =
  if n = 0 then [] 
  else n :: enumerate(n - 1)

let rec fold_right f lst init = match lst with
  [] -> init
  | first :: rest -> f first (fold_right f rest init)

(* 目的:nまでの階乗をもとめる *)
(* fac -> int -> int *)
let fac n = fold_right ( * ) (enumerate n) 1

let test1 = fac 1 = 1
let test2 = fac 2 = 2
let test3 = fac 3 = 6
let test4 = fac 10 = 3628800