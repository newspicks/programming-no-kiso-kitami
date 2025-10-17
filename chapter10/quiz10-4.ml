#use "../chapter8/quiz8-3.ml";;


(* 目的: 人データ x を名前の昇順を保持するようにリスト lst に挿入する *)
(* person_insert : person_t list -> person_t -> person_t list *)
let rec person_insert lst x = match lst with
    [] -> [x]
  | first :: rest ->
     if x.name <= first.name then
       x :: lst
     else
       first :: person_insert rest x


(* 目的: 人データリスト lst を名前の昇順に整列する *)
(* person_sort : person_t list -> person_t list *)
let rec person_sort lst = match lst with
    [] -> []
  | first :: rest -> person_insert (person_sort rest) first



let yamada = {
  name = "YamadaTaro";
  height = 170.0;
  weight = 60.0;
  birth_month = 1;
  birth_day = 1;
  blood_type = "A";
}
let tanaka = {
  name = "TanakaHanako";
  height = 180.0;
  weight = 70.0;
  birth_month = 2;
  birth_day = 2;
  blood_type = "B";
}
let bob = {
  name = "Bob";
  height = 190.0;
  weight = 80.0;
  birth_month = 3;
  birth_day = 3;
  blood_type = "O";
}
let alice = {
  name = "Alice";
  height = 110.0;
  weight = 30.0;
  birth_month = 4;
  birth_day = 4;
  blood_type = "AB";
}

let test1 = person_sort [] = [];;
let test2 = person_sort [yamada] = [yamada];;
let test3 = person_sort [yamada; tanaka] = [tanaka; yamada];;
let test4 = person_sort [yamada; tanaka; bob; alice] = [alice; bob; tanaka; yamada];;