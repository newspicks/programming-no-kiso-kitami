(* 目的:自然数mとnを受け取ったら、mのn乗を求める *)
(* pow: int -> int -> int *)
let rec power m n = 
  if n = 0 then 1
  else m * power m (n - 1)

(* テスト *)
let test1 = power 2 0 = 1
let test2 = power 2 1 = 2
let test3 = power 2 2 = 4
let test4 = power 3 0 = 1
let test5 = power 3 1 = 3
let test6 = power 3 2 = 9