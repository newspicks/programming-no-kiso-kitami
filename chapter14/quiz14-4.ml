type gakusei_t = { namae : string; tensuu : int; seiseki : string };;

let gakusei_1 = { namae = "asai"; tensuu = 70; seiseki = "B" };;
let gakusei_2 = { namae = "suzuki"; tensuu = 85; seiseki = "A" };;
let gakusei_3 = { namae = "tanaka"; tensuu = 60; seiseki = "C" };;

let rec fold_right f lst init = match lst with
  [] -> init
  | first :: rest -> f first (fold_right f rest init)


(* 目的: gakusei_t と 残りのスコア和を合算してかえす *)
(* add_gakusei_score -> gakusei_t -> int -> int *)
let add_gakusei_score gakusei rest_result = gakusei.tensuu + rest_result 

(* 目的:gakusei_tのリストを受け取り、その合計点をかえす *)
(* gakusei_sum : gakusei_t list -> int *)
let gakusei_sum lst = fold_right add_gakusei_score lst 0 

let test1 = gakusei_sum [] = 0
let test2 = gakusei_sum [gakusei_1] = 70
let test3 = gakusei_sum [gakusei_2] = 85
let test4 = gakusei_sum [gakusei_1; gakusei_2] = 155