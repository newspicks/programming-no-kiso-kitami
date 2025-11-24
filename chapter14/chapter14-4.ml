fun x -> x + 1

(* 目的:initから始めてlstの要素を右から順にfを施しこむ *)
(* fold_right -> ('a -> 'b -> 'b) -> 'a list -> 'b -> 'b *)
let rec fold_right f lst init = match lst with
  [] -> init
  | first :: rest -> f first (fold_right f rest init)

(* 目的:整数のリストを受け取り合計数をかえす  *)
(* sum -> int list -> int *)
let sum lst = 
  fold_right (fun first rest_result -> first + rest_result) lst 0

let test_sum_1 = sum [] = 0
let test_sum_2 = sum[1] = 1
let test_sum_3 = sum[1;2;] = 3
let test_sum_4 = sum[1;-2;] = -1


(* 目的:lst1とlst2を結合したリストをかえす *)
(* append -> 'a list -> 'a list -> 'a list *)
let append lst1 lst2 = fold_right (fun first rest -> first :: rest) lst1 lst2
let test_append_1 = append [] [] = []
let test_append_2 = append [1][] = [1]
let test_append_3 = append [][1] = [1]
let test_append_4 = append [1][2] = [1;2]
let test_append_5 = append [1;2;3;4;][5;6;7;8] = [1;2;3;4;5;6;7;8]