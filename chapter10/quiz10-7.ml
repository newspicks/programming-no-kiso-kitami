#use "../chapter8/quiz8-3.ml"

(* 目的:学生リストlstのうち各成績の人数を集計する *)
(* shukei : gakusei_t list -> int * int * int * int *)
let rec ketsueki_shukei lst = match lst with
  [] -> (0, 0, 0, 0)
  | {blood_type = bt;} :: rest ->
    let (a, b, o, ab) = ketsueki_shukei rest in
    match bt with
        "A" ->  (a + 1, b, o, ab) 
        | "B" -> (a, b + 1, o, ab)
        | "O" -> (a, b, o + 1, ab)
        | _ -> (a, b, o, ab + 1)

let test1 = ketsueki_shukei [] = (0, 0, 0, 0)
let test2 = ketsueki_shukei [person1] = (1, 0, 0, 0)
let test3 = ketsueki_shukei [person2; person3; person4] = (0, 1, 1, 1)
let test4 = ketsueki_shukei [person1; person2; person3; person4] = (1, 1, 1, 1)