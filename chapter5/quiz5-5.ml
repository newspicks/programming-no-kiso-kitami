#use "quiz5-4.ml"

(* 目的:二次方程式の解の個数を返す *)
(* kai_no_kosu: float -> float -> float -> int *)
let kai_no_kosu a b c = if hanbetsushiki a b c > 0.0 then 2 
  else if hanbetsushiki a b c = 0.0 then 1 
  else 0

let test1 = kai_no_kosu 1.0 2.0 1.0 = 1
let test2 = kai_no_kosu 1.0 3.0 1.0 = 2
let test3 = kai_no_kosu 1.0 1.0 1.0 = 0