#use "../chapter8/quiz8-3.ml"
#use "./quiz10-7.ml"

(* 目的:学生リストlstのうち最も多い血液型を返す *)
(* saita_ketsueki : gakusei_t list -> string *)
let saita_ketsueki lst = match lst with
  [] -> ""
  | _ ->
    let (a, b, o, ab) = ketsueki_shukei lst in
    if a >= b && a >= o && a >= ab then
      "A"
    else if b >= a && b >= o && b >= ab then
      "B"
    else if o >= a && o >= b && o >= ab then
      "O"
    else
      "AB"

let test1 = saita_ketsueki [] = ""
let test2 = saita_ketsueki [person1;] = "A"