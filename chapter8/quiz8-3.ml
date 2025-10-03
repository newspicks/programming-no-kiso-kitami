(* 各人のデータを表す型 *)
type person_t =  {
  height: float;     (* 身長 *)
  weight: float;     (* 体重 *)
  birth_month: int;  (* 誕生月 *)
  birth_day: int;    (* 誕生日 *)
}

let person1 = {
  height = 170.0;
  weight = 60.0;
  birth_month = 1;
  birth_day = 1;
}
let person2 = {
  height = 180.0;
  weight = 70.0;
  birth_month = 2;
  birth_day = 2;
}
let person3 = {
  height = 190.0;
  weight = 80.0;
  birth_month = 3;
  birth_day = 3;
}