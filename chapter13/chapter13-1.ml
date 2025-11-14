(* 目的：成績が "A" の人の数を数える *)
(* count_A : { namae : string; tensuu : int; seiseki : string } list -> int *)
let rec count_A lst = match lst with
    [] -> 0
  | { namae = n; tensuu = t; seiseki = s } :: rest
      -> if s = "A" then 1 + count_A rest
         else count_A rest  


(* 目的：成績が "B" の人の数を数える *)
(* count_B : { namae : string; tensuu : int; seiseki : string } list -> int *)
let rec count_B lst = match lst with
    [] -> 0
  | { namae = n; tensuu = t; seiseki = s } :: rest
      -> if s = "B" then 1 + count_A rest
         else count_A rest  