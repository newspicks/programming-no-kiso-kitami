(+) 3 5;;

(* 目的: initから始めてlstの要素を右から順にfを施しこむ *)
(* fold_right -> ('a -> 'b -> 'b) -> 'a list -> 'b -> 'b *)
(* f:変換処理の関数 lst:処理対処となる配列 init:初期値 *)
let rec fold_right f lst init = match lst with
  [] -> init
  | first :: rest -> f first (fold_right f rest init)

let sum lst = fold_right (+) lst 0 

let test_sum_1 = sum [] = 0
let test_sum_2 = sum [1] = 1
let test_sum_3 = sum [1;2] = 3
let test_sum_4 = sum [1;-2] = -1