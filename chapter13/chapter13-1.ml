type gakusei_t = {
  namae : string;
  tensuu : int;
  seiseki : string;
}

(* 目的：成績が "A" の人の数を数える *)
(* count_A : { namae : string; tensuu : int; seiseki : string } list -> int *)
let rec count_A lst = match lst with
  [] -> 0
  | { namae = n; tensuu = t; seiseki = s } :: rest
      -> if s = "A" then 1 + count_A rest
         else count_A rest

let test1 = count_A [] = 0
let test2 = count_A [{ namae = "山田"; tensuu = 80; seiseki = "B" }] = 0
let test3 = count_A [{ namae = "山田"; tensuu = 90; seiseki = "A" }] = 1


(* 目的：成績が "B" の人の数を数える *)
(* count_B : { namae : string; tensuu : int; seiseki : string } list -> int *)
let rec count_B lst = match lst with
  [] -> 0
  | { namae = n; tensuu = t; seiseki = s } :: rest
      -> if s = "B" then 1 + count_A rest
         else count_A rest

let test4 = count_B [] = 0
let test5 = count_B [{ namae = "山田"; tensuu = 90; seiseki = "A" }] = 0
let test6 = count_B [{ namae = "山田"; tensuu = 80; seiseki = "B" }] = 1

(* 目的：成績が seiseki0 の人の数を数える *)
(* count : { namae : string; tensuu : int; seiseki : string } list -> string -> int *)
let rec count lst seiseki0 = match lst with 
  [] -> 0
  | { namae = n; tensuu = t; seiseki = s } :: rest
     -> if s = seiseki0 then 1 + count rest seiseki0
        else count rest seiseki0


let test7 = count [] "A" = 0
let test8 = count [{ namae = "山田"; tensuu = 90; seiseki = "A" }] "B" = 0
let test9 = count [{ namae = "山田"; tensuu = 80; seiseki = "B" }] "B" = 1

let test10 = count 
  [ { namae = "山田"; tensuu = 90; seiseki = "A" };
    { namae = "佐藤"; tensuu = 80; seiseki = "B" };
    { namae = "鈴木"; tensuu = 70; seiseki = "C" };
    { namae = "高橋"; tensuu = 85; seiseki = "B" } ] "B" = 2