#use "../chapter8/quiz8-3.ml";;
#use "../chapter5/quiz5-3.ml";;

(* 乙女座の人数を数える *)
(* otomeza : person_t list -> int *)
let rec otomeza list =  match list with 
    [] -> 0
    | { birth_month = m; birth_day = d; } :: rest ->
        if seiza m d = "乙女座" then 1 + otomeza rest
                        else otomeza rest;;

let otomeza_person = { name = "Otome"; height = 150.0; weight = 40.0; birth_month = 8; birth_day = 26; blood_type = "O" };;                        
let yagiza_person = { name = "Yagiza"; height = 160.0; weight = 50.0; birth_month = 1; birth_day = 10; blood_type = "A" };;

let test1 = otomeza [] = 0;;
let test2 = otomeza [otomeza_person] = 1;;
let test3 = otomeza [yagiza_person] = 0;;
let test4 = otomeza [otomeza_person; yagiza_person] = 1;;