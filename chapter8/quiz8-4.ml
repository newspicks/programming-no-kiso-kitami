#use "quiz8-3.ml"


(* person_t型のデータを受け取り，名前と血液型を表示する関数 *)
(* ketsueki_hyouji: person_t -> string *)
let ketsueki_hyouji person = match person with
{ name = n; blood_type = bt;  } ->
    "" ^ n ^ "さんの血液型は" ^ bt ^ "型です。";;

 let test1 = ketsueki_hyouji person1 = "YamadaTaroさんの血液型はA型です。"
 let test2 = ketsueki_hyouji person2 = "YamadaHanakoさんの血液型はB型です。"
 let test3 = ketsueki_hyouji person3 =  "Bobさんの血液型はO型です。"
 let test4 = ketsueki_hyouji person4 =  "Aliceさんの血液型はAB型です。"