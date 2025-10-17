(* 目的: 整数 x を昇順に保つようにリスト lst に挿入する *)
(* insert : int -> int list -> int list *)
let rec insert lst x = match lst with
    [] -> [x]
  | first :: rest ->
      if x <= first then
        x :: lst
      else
        first :: insert rest x

let test1 = insert [] 2 = [2];;
let test2 = insert [1;3;4] 2 = [1;2;3;4];;
let test3 = insert [1;3;4;7;8;] 5 = [1;3;4;5;7;8];;