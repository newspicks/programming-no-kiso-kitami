(* 目的:受け取ったlstの和を求める *)
(* sum -> int list -> int *)
let rec sum lst = match lst with
  [] -> 0
  | first :: rest -> first + sum rest

(* 目的:受け取ったlstの長さを求める *)
(* length -> 'a list -> int *)
let rec length lst = match lst with
  [] -> 0
  | first :: rest -> 1 + length rest

(* 目的:lst1とlst2を結合したリストをかえす *)
(* append -> 'a list -> 'a list -> 'a list *)
let rec append lst1 lst2 = match lst1 with
  [] -> lst2
  | first :: rest ->
    first :: append rest lst2

(* 目的: initから始めてlstの要素を右から順にfを施しこむ *)
(* fold_right -> ('a -> 'b -> 'b) -> 'a list -> 'b -> 'b *)
(* f:変換処理の関数 lst:処理対処となる配列 init:初期値 *)
let rec fold_right f lst init = match lst with
  [] -> init
  | first :: rest -> f first (fold_right f rest init)


(* fold_rightを使ってsum/length/appendを実装する *)


(* sum *)
let add_int first rest_result = first + rest_result
let sum lst = fold_right add_int lst 0
let sum_test_1 = sum [] = 0
let sum_test_2 = sum [1] = 1
let sum_test_3 = sum [1;-3] = -2

(* length *)
let add_one first rest_result = 1 + rest_result

let length lst = fold_right add_one lst 0

let length_test_1 = length [] = 0
let length_test_2 = length [1] = 1
let length_test_3 = length [1;2;] = 2
let length_test_4 = length [true] = 1


(* append *)
let cons first rest = first :: rest
let append lst1 lst2 = fold_right cons lst1 lst2

let test_append_1 = append [] [] = []
let test_append_2 = append [1][] = [1]
let test_append_3 = append [][1] = [1]
let test_append_4 = append [1][2] = [1;2]
let test_append_5 = append [1;2;3;4;][5;6;7;8] = [1;2;3;4;5;6;7;8]