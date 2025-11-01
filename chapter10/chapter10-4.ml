#use "./quiz10-3.ml"

(* 目的:学生リストlstのうち各成績の人数を集計する *)
(* shukei : gakusei_t list -> int * int * int * int *)
let rec shukei lst = match lst with
  [] -> (0, 0, 0, 0)
  | {namae = n; tensuu = t; seiseki = s} :: rest ->
    let (a, b, c, d) = shukei rest in
    if s = "A" then
      (a + 1, b, c, d)
    else if s = "B" then
      (a, b + 1, c, d)
    else if s = "C" then
      (a, b, c + 1, d)
    else
      (a, b, c, d + 1)


let test1 = shukei [] = (0, 0, 0, 0)
let test2 = shukei [gakusei_1] = (0, 1, 0, 0)
let test3 = shukei [gakusei_2; gakusei_3] = (1, 0, 1, 0)