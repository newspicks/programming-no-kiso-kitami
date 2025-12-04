(* nまでの整数列をかえす *)
(* enumerate -> int -> int list *)
let rec enumerate n =
  if n = 0 then [] 
  else n :: enumerate(n - 1)

let enum_test = enumerate 0 = []
let enum_test = enumerate 1 = [1]
let enum_test = enumerate 5 = [5;4;3;2;1]


(* 目的:nの約数のリストをかえす *)
(* divisor -> int -> int list *)
let rec divisor n = List.filter(fun x -> n mod x = 0) (enumerate n)

let divisor_test_1 = divisor 1 = [1]
let divisor_test_2 = divisor 2 = [2;1]
let divisor_test_3 = divisor 6 = [6;3;2;1]
let divisor_test_4 = divisor 24 = [24;12;8;6;4;3;2;1]


(* 目的: initから始めてlstの要素を右から順にfを施しこむ *)
(* fold_right -> ('a -> 'b -> 'b) -> 'a list -> 'b -> 'b *)
(* f:変換処理の関数 lst:処理対処となる配列 init:初期値 *)
let rec fold_right f lst init = match lst with
  [] -> init
  | first :: rest -> f first (fold_right f rest init)

(* 目的:m以下の完全数をリストでかえす *)
(* perfect -> int -> int list *)
let perfect m = List.filter(fun x -> fold_right (+) (divisor x) 0 - x = x) (enumerate m)

let perfect_test_1 = perfect 6 = [6]
let perfect_test_2 = perfect 10000 = [8128;496;28;6]


let sum lst = fold_right (+) lst 0 
let neo_perfect m = List.filter(fun x -> sum (divisor x) - x = x) (enumerate m)
let neo_perfect_test_1 = neo_perfect 6 = [6]
let neo_perfect_test_2 = neo_perfect 10000 = [8128;496;28;6]