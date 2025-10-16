(* 整数のリストを受け取り、その仲野偶数の要素のみを含むリストを返す*)
(* even : int list -> int list *)
let rec even list = match list with
    [] -> []
    | first :: rest -> if first mod 2 = 0 then first :: even rest
                                      else even rest;;

let test1 = even [] = [];;
let test2 = even [1;3;5] = [];;
let test3 = even [0;2;4] = [0;2;4];;
let test4 = even [1;2;3;4;5;6] = [2;4;6];;