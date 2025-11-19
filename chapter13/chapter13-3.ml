(* 目的:受け取ったリストlstの長さを求める *)
(* length : 'a list -> int *)
let rec length lst= match lst with 
  [] -> 0
  | first :: rest -> 1 + length rest


let test1 = length [] = 0
let test2 = length [1;2;3] = 3
let test3 = length ["a";"b";"c";"d"] = 4
let test4 = length [true; false; true] = 3