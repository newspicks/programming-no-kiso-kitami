#use "./quiz10-3.ml"


(* 目的:学生のリストを受け取り、その中の最高得点のレコードを返す*)
(* gakusei_max : gakusei_t list -> gakusei_t *)
let rec gakusei_max lst = match lst with
  [] -> failwith "リストが空です"
  | [x] -> x
  | first :: rest ->
    let max_rest = gakusei_max rest in
    if first.tensuu >= max_rest.tensuu then first else max_rest

let test1 = gakusei_max [gakusei_1] = gakusei_1 
let test2 = gakusei_max [gakusei_1; gakusei_2] = gakusei_2
let test3 = gakusei_max [gakusei_1; gakusei_2; gakusei_3] = gakusei_2