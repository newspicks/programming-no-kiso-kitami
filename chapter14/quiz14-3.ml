let rec fold_right f lst init = match lst with
  [] -> init
  | first :: rest -> f first (fold_right f rest init)

(* 文字列同士で結合し、新たな文字列をかえす *)
(* concat_single string -> string -> string *)
let concat_single x rest = x ^ rest

(* 目的:文字列のリストを受け取り、それを1つの文字列として結合してかえす *)
(* concat string list -> string*)
let concat lst = fold_right concat_single lst "" 

let test_1 = concat [] = ""
let test2 = concat ["a"] = "a"
let test3 = concat ["a";"b"] = "ab"