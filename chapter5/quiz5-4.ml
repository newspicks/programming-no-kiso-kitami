(* 目的:二次方程式の判別式の値を返す*)
(* hanbetsushiki: float -> float -> float -> float *)
let hanbetsushiki a b c = b ** 2.0 -. 4.0 *. a *. c
let test1 = hanbetsushiki 1.0 2.0 1.0 = 0.0
let test2 = hanbetsushiki 1.0 1.0 1.0 = -3.0
let test3 = hanbetsushiki 1.0 3.0 1.0 = 5.0