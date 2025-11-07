(* 目的:2つのリストを受け取ってきたらそれらの長さが同じかどうか判定する *)
(* equal_length : 'a list -> 'b list -> bool *)
let rec equal_length lst1 lst2 = match (lst1, lst2) with 
  ([], []) -> true
  | (first1 :: rest1, []) -> false
  | ([], first2 :: rest2) -> false
  | (first1 :: rest1, first2 :: rest2) ->
      equal_length rest1 rest2

let test1= equal_length [] [] = true
let test2= equal_length [1;2;3] [] = false
let test3= equal_length [] [4;5;6] = false
let test4= equal_length [1;2;3] [4;5;6] = true
let test5 = equal_length ["A";"B";"C"] [4;5;6] = true