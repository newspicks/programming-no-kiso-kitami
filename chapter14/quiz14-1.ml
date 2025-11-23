(* 目的:偶数かを判定してかえす *)
(* is_even : int -> bool *)
let is_even x = x mod 2 = 0

(* 目的:整数のリストを受け取り、偶数の要素をリストとしてかえす *)
(* even -> int list -> int list *)
let even lst = List.filter is_even lst

let test1 = even [] = []
let test2 = even [1] = [1]
let test3 = even [2] = [2]
let test4 = even [1; 2] = [2]
let test5 = even [-1] = []
let test6 = even [-2] = [-2]