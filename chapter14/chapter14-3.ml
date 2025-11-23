(* 目的:initから始めてlstの要素を右から順にfを施しこむ *)
(* fold_right -> ('a -> 'b -> 'b) -> 'a list -> 'b -> 'b *)
let rec fold_right f lst init = match lst with
  [] -> init
  | first :: rest -> f first (fold_right f rest init)

(* 目的: 整数のリストを受け取り合計値をかえす*)
(* sum : int list -> int *)
let sum lst =
  let add_int first rest_result = first + rest_result
  in fold_right add_int lst 0

let test_1 = sum[] = 0
let test_2 = sum[1] = 1
let test_3 = sum[1;2] = 3
let test_4 = sum[1;-2] = -1