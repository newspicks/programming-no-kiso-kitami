#use "./quiz10-1.ml";;

(* 目的: 整数を配列を受け取り、それを昇順に整列したリストを返す *)
(* insert : int list -> int -> int list *)
let rec ins_sort lst = match lst with
    [] -> []
  | first :: rest -> insert (ins_sort rest) first

let test4 = ins_sort [] = [];;
let test5 = ins_sort [3] = [3];;
let test6 = ins_sort [4;2;5;1;3] = [1;2;3;4;5];;