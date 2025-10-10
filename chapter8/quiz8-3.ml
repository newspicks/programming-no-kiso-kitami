(* 各人のデータを表す型 *)
type person_t =  {
  name: string;       (* 名前 *)
  height: float;     (* 身長 *)
  weight: float;     (* 体重 *)
  birth_month: int;  (* 誕生月 *)
  birth_day: int;    (* 誕生日 *)
  blood_type: string; (* 血液型 *)
}

let person1 = {
  name = "YamadaTaro";
  height = 170.0;
  weight = 60.0;
  birth_month = 1;
  birth_day = 1;
  blood_type = "A";
}
let person2 = {
  name = "YamadaHanako";
  height = 180.0;
  weight = 70.0;
  birth_month = 2;
  birth_day = 2;
  blood_type = "B";
}
let person3 = {
  name = "Bob";
  height = 190.0;
  weight = 80.0;
  birth_month = 3;
  birth_day = 3;
  blood_type = "O";
}
let person4 = {
  name = "Alice";
  height = 110.0;
  weight = 30.0;
  birth_month = 4;
  birth_day = 4;
  blood_type = "AB";
}