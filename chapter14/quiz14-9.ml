
type person_t =  {
  name: string;       (* 名前 *)
  height: float;     (* 身長 *)
  weight: float;     (* 体重 *)
  birth_month: int;  (* 誕生月 *)
  birth_day: int;    (* 誕生日 *)
  blood_type: string; (* 血液型 *)
};;

fun p -> p.name