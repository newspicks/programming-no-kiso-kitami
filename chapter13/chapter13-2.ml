#use "../chapter8/chapter8-6.ml"

(* 目的:実数のリストを受け取り、それらの平方根のリストを返す *)
(* map_sqrt : float list -> float list *)
let rec map_sqrt lst = match lst with
    [] -> []
  | first :: rest -> (sqrt first) :: (map_sqrt rest)

let test1 = map_sqrt [] = []
let test2 = map_sqrt [4.0; 9.0; 16.0] = [2.0; 3.0; 4.0]


(* 目的:学生のリストを受け取り、評価のリストを返す *)
(* map_hyouka : gakusei_t list -> gakusei_t list *)
let rec map_hyouka lst = match lst with
  [] -> []
  | first :: rest -> hyouka first ::map_hyouka rest

let test3 = map_hyouka [{namae = "asai"; tensuu = 90; seiseki = ""};]
          = [{namae = "asai"; tensuu = 90; seiseki = "A"}]
let test4 = map_hyouka
  [{namae = "asai"; tensuu = 90; seiseki = ""};
   {namae = "suzuki"; tensuu = 75; seiseki = ""};]
  = [{namae = "asai"; tensuu = 90; seiseki = "A"};
     {namae = "suzuki"; tensuu = 75; seiseki = "B"}]



(* 目的:関数fとリストlstを受け取りfを施したリストを返す *)
(* map : ('a -> 'b) -> 'a list -> 'b list *)
let rec map f lst = match lst with
  [] -> []
  | first :: rest -> f first :: map f rest

(* 関数がfirst-classである(他の値と同じように自由に扱うことができる *)

let test5 = map sqrt [4.0; 9.0; 16.0] = [2.0; 3.0; 4.0]
let test6 = map hyouka [{namae = "asai"; tensuu = 90; seiseki = "";}]
          = [{namae = "asai"; tensuu = 90; seiseki = "A"}]
let test7 = map (fun x -> x + 1) [1; 2; 3] = [2; 3; 4]

(* 関数を引数として受け取る関数:高階関数 *)