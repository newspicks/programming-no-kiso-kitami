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


let get_person_namae p = match p with 
  {name = n;} -> n

let rec map f lst = match lst with
  [] -> []
  | first :: rest -> f first :: map f rest

(* 目的:人のリストを受け取り、その名前のリストを返す *)
(* person_namae : person_t list -> string list *)
let person_namae lst =
   map get_person_namae lst

let test1 = person_namae [] = []
let test2 = person_namae [person1; person2; person3; person4]
          = ["YamadaTaro"; "YamadaHanako"; "Bob"; "Alice"]