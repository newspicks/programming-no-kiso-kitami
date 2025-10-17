
(* 各配列にprefixを加算する *)
let rec add_to_each prefix lst = match lst with
    [] -> []
    | first :: rest -> [first + prefix] :: add_to_each prefix rest;;

let test1 = add_to_each 10 [] = [];;
let test2 = add_to_each 10 [1] = [[11]];;