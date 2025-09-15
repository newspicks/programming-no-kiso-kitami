(* 時間帯を判定する *)
(* 0 <= x < 12 のとき "AM" , 12 <= x <= 24のとき "PM", それ以外は "error" *)
(* jikan : int -> string *)
let jikan x = if 0 <= x && x < 12 then "AM"
  else if x > 12 && x <= 24 then "PM"
  else "error"
let test1 = jikan 10 = "AM"
let test2 = jikan 0 = "AM"
let test3 = jikan 24 = "PM"
let test4 = jikan 25 = "error"
let test5 = jikan (-1) = "error"