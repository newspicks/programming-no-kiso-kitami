(* BMIを計算する *)
(* bmi : float -> float -> float *)
let bmi shincho taiju = taiju /. (shincho ** 2.0);;
bmi 1.7 70.0

(* BMIから体系を判定する *)
let himan shincho taiju = if(bmi shincho taiju) < 18.5 then "やせ"
  else if (18.5 <= (bmi shincho taiju) && (bmi shincho taiju) < 25.0) then "標準"
  else if (25.0 <= (bmi shincho taiju) && (bmi shincho taiju) < 30.0) then "肥満"
  else "高度肥満"


let test1 = himan 1.7 70.0 = "標準"
let test2 = himan 1.7 80.0 = "肥満"
let test3 = himan 1.7 90.0 = "高度肥満"
let test4 = himan 1.7 50.0 = "やせ"