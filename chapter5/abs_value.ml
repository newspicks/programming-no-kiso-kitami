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
