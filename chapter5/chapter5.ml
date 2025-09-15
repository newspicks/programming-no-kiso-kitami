(* 5-1 *)
let yugu_jikyu = 980;;

(* 5-2 *)
if true then 1 else 2;;
if false then 1 else 2 ;;

if 1 < 2 then 3 else 4;;
if 3 + 4 < 5 then 1 else 2;;

(* booleanで評価できない *)
if 1 then 2 else 3;;
(* 型が分岐で異なる *)
if 3 + 4 > 5 then 1 else "2";;


(* 5-3 *)
let yugu_jikyu = 980;;
let kihonkyuu = 300000;;
let jikyuu = 1000;;
let kyuuyo x = 
  if x < 30 then kihonkyuu + x * jikyuu
               else kihonkyuu + x * yugu_jikyu;;
kyuuyo 20;;

let test1 = kyuuyo 20 = 320000;;

(* 5-4 *)
let kyuuyo x = kihonkyuu + x * (if x < 30 then jikyuu else yugu_jikyu);;

(* 5-5 *)
(* 失敗するabs_value *)
let abs_value x = 0.0;;
let test1 = abs_value 2.8 = 2.8
let test2 = abs_value (-2.8) = 2.8
let test3 = abs_value 0.0 = 0.0


(* まだ失敗するabs_value *)
let abs_value x = if x > 0.0 then x else 0.0;;

(* 成功する abs_value *)
let abs_value x = if x < 0.0 then -. x else x;;
let test1 = abs_value 2.8 = 2.8
let test2 = abs_value (-2.8) = 2.8
let test3 = abs_value 0.0 = 0.0


(* 5-6 *)
(* 目的:現在の気温tから快適度を表す文字列を計算する *)
(* kion : int -> string *)
let kion t = ""

(* テスト *)
let test1 = kion 7 = "普通"
let test2 = kion 15 = "快適"
let test3 = kion 20 = "快適"
let test4 = kion 25 = "快適"
let test5 = kion 28 = "普通"

(* 失敗する kion *)
let kion t = 
  if t < 15 then ""
  else if t <= 25 then""
  else ""


let kion t = 
  if t < 15 then "普通"
  else if t <= 25 then "快適"
  else "普通"

(* 目的:現在の気温tが15度以上25度以下かをチェック *)
let kaiteki t = false

(* テストを先にかく *)
let test1 = kaiteki 7 = false
let test2 = kaiteki 15 = true
let test3 = kaiteki 20 = true
let test4 = kaiteki 25 = true
let test5 = kaiteki 28 = false

let kaiteki t = 15 <= t && t <= 25
let test1 = kaiteki 7 = false
let test2 = kaiteki 15 = true
let test3 = kaiteki 20 = true
let test4 = kaiteki 25 = true
let test5 = kaiteki 28 = false