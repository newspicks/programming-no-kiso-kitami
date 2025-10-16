#use "../chapter8/quiz8-3.ml";;

(* 血液型が A の数を数える *)
(* count_ketsueki_A : person_t list -> int *)
let rec count_ketsueki_A lst = match lst with
    [] -> 0
    | { blood_type = b; } :: rest ->
        if b = "A" then 1 + count_ketsueki_A rest
                        else count_ketsueki_A rest;;

let blood_type_A = { name = "A"; height = 0.0; weight = 0.0; birth_month = 0; birth_day = 0; blood_type = "A" };;
let blood_type_B = { name = "B"; height = 0.0; weight = 0.0; birth_month = 0; birth_day = 0; blood_type = "B" };;
let blood_type_A2 = { name = "A"; height = 0.0; weight = 0.0; birth_month = 0; birth_day = 0; blood_type = "A" };;

let test1 = count_ketsueki_A [] = 0;;
let test2 = count_ketsueki_A [person1; person2; person3; person4] = 1;;