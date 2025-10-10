#use "quiz8-3.ml"


(* person_t型のデータを受け取り，名前と血液型を表示する関数 *)
(* ketsueki_hyouji: person_t -> string *)
let ketsueki_hyouji person = match person with
{ name = n; blood_type = bt;  } ->
    "" ^ n ^ "さんの血液型は" ^ bt ^ "型です。";;

 ketsueki_hyouji person1;;
 ketsueki_hyouji person2;;
 ketsueki_hyouji person3;;
 ketsueki_hyouji person4;;