let x = 2 in x + x;;

let x = 3 in let y = 4 in x + y;;

(* 受け取ったlstの中の最小値をかえす *)
(* minimum : int list -> int *)
let rec minimum lst = match lst with
    [] -> max_int
    | first :: rest ->
        let min_rest = minimum rest in
        if first <= min_rest
        then first
        else min_rest
