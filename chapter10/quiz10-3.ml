
type gakusei_t = { namae : string; tensuu : int; seiseki : string };;

let gakusei_1 = { namae = "asai"; tensuu = 70; seiseki = "B" };;
let gakusei_2 = { namae = "suzuki"; tensuu = 85; seiseki = "A" };;
let gakusei_3 = { namae = "tanaka"; tensuu = 60; seiseki = "C" };;

(* 目的:学生をスコアの昇順を保持するように挿入する *)
(* gakusei_insert : gakusei_t list -> gakusei_t -> gakusei_t list *)
let rec gakusei_insert lst x = match lst with
    [] -> [x]
  | first :: rest ->  match first.tensuu <= x.tensuu with
      true -> 
        first :: gakusei_insert rest x
    | false ->
        if x <= first then
          x :: lst
        else
          first :: gakusei_insert rest x


(* 目的: 学生リスト lst を成績の昇順に整列する *)
(* gakusei_sort : gakusei_t list -> gakusei_t list *)
let rec gakusei_sort lst = match lst with
    [] -> []
  | first :: rest -> gakusei_insert (gakusei_sort rest) first

let test1 = gakusei_sort [] = [];;
let test2 = gakusei_sort [gakusei_1] = [gakusei_1];;
let test3 = gakusei_sort [gakusei_1; gakusei_2] = [ gakusei_1;gakusei_2;];;
let test = gakusei_sort [gakusei_1; gakusei_2; gakusei_3] = [gakusei_3; gakusei_1; gakusei_2];;