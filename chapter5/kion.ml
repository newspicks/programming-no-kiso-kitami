(* 目的:現在の気温tが15度以上25度以下かをチェックする *)
(* kaiteki : int -> bool *)
let kaiteki t = 15 <= t && t <= 25

let test1 = kaiteki 7 = false
let test2 = kaiteki 15 = true
let test3 = kaiteki 20 = true
let test4 = kaiteki 25 = true
let test5 = kaiteki 28 = false
let test6 = kaiteki 14 = false
let test7 = kaiteki 26 = false

(* 目的：現在の気温tから快適度を表す文字列を計算する *)
(* kion : int -> string *)
let kion t = 
  if kaiteki t then "快適"
  else "普通"

  let test1 = kion 7 = "普通"
  let test2 = kion 15 = "快適"
  let test3 = kion 20 = "快適"
  let test4 = kion 25 = "快適"
  let test5 = kion 28 = "普通"
  let test6 = kion 14 = "普通"
  let test7 = kion 26 = "普通"