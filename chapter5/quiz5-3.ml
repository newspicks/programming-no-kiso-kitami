(* 星座を判定する *)
(* 月、日を受け取って対応する星座を返す。不正値は"error"を返す。 *)
(* seiza : int -> int -> string *)
let seiza month day =
  match (month, day) with
  | (1, d) when d >= 1 && d <= 19 -> "山羊座"
  | (1, d) when d >= 20 && d <= 31 -> "水瓶座"
  | (2, d) when d >= 1 && d <= 18 -> "水瓶座"
  | (2, d) when d >= 19 && d <= 29 -> "魚座"
  | (3, d) when d >= 1 && d <= 20 -> "魚座"
  | (3, d) when d >= 21 && d <= 31 -> "牡羊座"
  | (4, d) when d >= 1 && d <= 19 -> "牡羊座"
  | (4, d) when d >= 20 && d <= 30 -> "牡牛座"
  | (5, d) when d >= 1 && d <= 20 -> "牡牛座"
  | (5, d) when d >= 21 && d <= 31 -> "双子座"
  | (6, d) when d >= 1 && d <= 21 -> "双子座"
  | (6, d) when d >= 22 && d <= 30 -> "蟹座"
  | (7, d) when d >= 1 && d <= 22 -> "蟹座"
  | (7, d) when d >= 23 && d <= 31 -> "獅子座"
  | (8, d) when d >= 1 && d <= 22 -> "獅子座"
  | (8, d) when d >= 23 && d <= 31 -> "乙女座"
  | (9, d) when d >= 1 && d <= 22 -> "乙女座"
  | (9, d) when d >= 23 && d <= 30 -> "天秤座"
  | (10, d) when d >= 1 && d <= 23 -> "天秤座"
  | (10, d) when d >= 24 && d <= 31 -> "蠍座"
  | (11, d) when d >= 1 && d <= 22 -> "蠍座"
  | (11, d) when d >= 23 && d <= 30 -> "射手座"
  | (12, d) when d >= 1 && d <= 21 -> "射手座"
  | (12, d) when d >= 22 && d <= 31 -> "山羊座"
  | _ -> "error"


 let testOtome = seiza 8 26 = "乙女座"
 let testError = seiza (-1) 26 = "error"