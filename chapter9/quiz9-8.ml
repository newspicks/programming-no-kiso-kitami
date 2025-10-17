#use "../chapter8/quiz8-3.ml";;
#use "../chapter5/quiz5-3.ml";;

(* 乙女座の人の名前のリストを返す *)
(* otomeza : person_t list -> string list *)
let rec otomeza list =  match list with 
    [] -> []
    | { birth_month = m; birth_day = d; name = n; } :: rest ->
        if seiza m d = "乙女座" then n :: otomeza rest
                        else otomeza rest;;

let otomeza_person = { name = "Otome"; height = 150.0; weight = 40.0; birth_month = 8; birth_day = 26; blood_type = "O" };;                        
let yagiza_person = { name = "Yagiza"; height = 160.0; weight = 50.0; birth_month = 1; birth_day = 10; blood_type = "A" };;

let test1 = otomeza [] = [];;
let test2 = otomeza [otomeza_person] = ["Otome"];;
let test3 = otomeza [yagiza_person] = [];;
let test4 = otomeza [otomeza_person; yagiza_person] = ["Otome"];;