(* 名前と成績の組みを受け取り、一文の文字列を返す *)
(* seiseki : string * int -> string *)
let seiseki pair  = match pair with
  (name, score) -> name ^ "さんの成績は" ^ string_of_int score ^ "点です";;

let test1 = seiseki ("山田", 85) = "山田さんの成績は85点です";;
let test2 = seiseki ("田中", 60) = "田中さんの成績は60点です";;