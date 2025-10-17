(* 目的 : 整数 n とリスト lst を受け取り、
         lst の各要素のそれぞれの頭に n つけたものを返す *)
(* add_to_each : int -> int list list -> int list list *)
let rec add_to_each n lst = match lst with
    [] -> []
  | first :: rest -> (n :: first) :: add_to_each n rest

let add_to_each_test1 = add_to_each 1 [] = [];;
let test2 = add_to_each 1 [[2]] = [[1;2]];;
let test3 = add_to_each 1 [[2;3];[4;5]] = [[1;2;3];[1;4;5]];;
let test4 = add_to_each 1 [[2]; [2;3]; [2;3;4]] = [[1;2]; [1;2;3]; [1;2;3;4]];;

(* 目的:各配列にprefixを加算する *)
(* prefix : 'a list -> 'a list list *)
let rec prefix lst = match lst with
    [] -> []
    | first :: rest -> [first] :: add_to_each first (prefix rest);;

let test5 = prefix [] = [];;
let test6 = prefix [1] = [[1]];;
let test7 = prefix [1;2] = [[1];[1;2]];;
let test8 = prefix[1;2;3;4;] = [[1];[1;2];[1;2;3];[1;2;3;4]];;