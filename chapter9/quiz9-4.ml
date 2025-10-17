(* 目的:整数のリストを受け取ったらその長さを返す *)
(* length : int list -> int *)
let rec length lst = match lst with
    [] -> 0
    | first :: rest -> 1 + length rest

  let test1 = length [] = 0
  let test2 = length [1] = 1
  let test3 = length [2; 1; 6; 4; 7] = 5