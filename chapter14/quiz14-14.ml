(* 目的: initから始めてlstの要素を右から順にfを施しこむ *)
(* fold_right -> ('a -> 'b -> 'b) -> 'a list -> 'b -> 'b *)
(* f:変換処理の関数 lst:処理対処となる配列 init:初期値 *)
let rec fold_right f lst init = match lst with
  [] -> init
  | first :: rest -> f first (fold_right f rest init)

(* 目的:文字列のリストを受け取り、連結した結果を文字列としてかえす *)
(* concat -> string list -> string *)
let concat lst = fold_right (^) lst ""

let concat_test_1 = concat [] = ""
let concat_test_2 = concat ["A"] = "A"
let concat_test_3 = concat ["A";"B"] = "AB"