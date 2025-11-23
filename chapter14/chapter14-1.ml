(*  リストの本質:各要素に対して一括して処理をする *)

(* 目的:整数のリストを受け取り、正の要素のみをとりだす *)
(* filter_positive : int list -> int list*)
let rec filter_positive lst = match lst with
  [] -> []
  | first :: rest ->
    if first > 0 then
      first ::filter_positive rest
    else
        filter_positive rest

let test1 = filter_positive [] = []
let test2 = filter_positive [1] = [1]
let test3 = filter_positive [1;-10] = [1]


(* 目的:3で割って1をかえすかを判定する *)
(* is_mode3_1 int -> bool*)
let is_mod3_1 n = n mod 3 = 1

(* 目的:整数のリストを受け取り、3で割って余りが1のリストをかえす *)
let rec filter_mod3_1 lst = match lst with
  [] -> []
  | first :: rest ->
    if is_mod3_1(first) then
      first :: filter_mod3_1 rest
    else
      filter_mod3_1 rest

let test4 = filter_mod3_1 [] = []
let test5 = filter_mod3_1 [1] = [1]
let test6 = filter_mod3_1 [2] = [] 
let test7 = filter_mod3_1 [3] = []
let test8 = filter_mod3_1 [-1] = []
let test9 = filter_mod3_1 [-2] = []
let test10 = filter_mod3_1 [1; 2; 3;-2] = [1]


(* 目的:リストと条件式を受け取って、その条件式を満たす要素をリストとしてかえす *)
(* filter : ('a -> bool ) -> 'a list -> 'a list *)
let rec filter p lst = match lst with
  [] -> []
  | first :: rest ->
    if p first then
      first :: filter p rest
    else
      filter p rest

(* 目的:3で割って1をかえすかを判定する *)
(* is_mode3_1 int -> bool*)
let filter_mod3_1 lst = filter is_mod3_1 lst

let test11 = filter_mod3_1 [] = []
let test12 = filter_mod3_1 [1] = [1]


(* 目的:整数が正かを判定する *)
(* is_positive -> int -> bool*)
let is_positive n = n > 0

let filter_positive lst = filter is_positive lst

let test13 = filter_positive [1;-10] = [1]