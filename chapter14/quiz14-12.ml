#use "../metro_data/metro_data.ml"

type eki_t = {
  namae: string;
  saitan_kyori: float;
  temae_list: string list;
}
 
(* 目的: ekimei_tのリストを受け取り、eki_tのリストを初期化した上で返す *)
(* make_initial_eki_list : ekimei_t list -> eki_t list *)
let make_initial_eki_list lst shiten = 
  List.map (fun ekimei -> 
    if ekimei.kanji = shiten then
      {namae = shiten; saitan_kyori = 0.0; temae_list = [shiten]}
    else
      {namae = ekimei.kanji; saitan_kyori = infinity; temae_list = []}
  ) lst

let ekimei_yoyogiuehara = { kanji="代々木上原"; kana="よよぎうえはら"; romaji="yoyogiuehara"; shozoku="千代田線" } 
let ekimei_yoyogikouen = { kanji="代々木公園"; kana="よよぎこうえん"; romaji="yoyogikouen"; shozoku="千代田線" } 
let ekimei_meijijinguumae = { kanji="明治神宮前"; kana="めいじじんぐうまえ"; romaji="meijijinguumae"; shozoku="千代田線" }
let ekimei_list_1 = [ekimei_yoyogiuehara]
let ekime_list_2 = [ekimei_yoyogiuehara; ekimei_yoyogikouen;]
let ekime_list_3 = [ekimei_yoyogiuehara; ekimei_yoyogikouen; ekimei_meijijinguumae]

let test_1 = make_initial_eki_list [] "代々木上原" = []
let test_2 = make_initial_eki_list ekimei_list_1 "代々木上原" 
  = [{ namae = "代々木上原"; saitan_kyori = 0.0; temae_list = ["代々木上原"] }]
let test_3 = make_initial_eki_list ekime_list_2 "代々木上原" 
  = [{ namae = "代々木上原"; saitan_kyori = 0.0; temae_list = ["代々木上原"]};
     { namae = "代々木公園"; saitan_kyori = infinity; temae_list = []}]
let test_4 = make_initial_eki_list ekime_list_3 "代々木上原" 
  = [{ namae = "代々木上原"; saitan_kyori = 0.0; temae_list = ["代々木上原"]};
     { namae = "代々木公園"; saitan_kyori = infinity; temae_list = []};
     { namae = "明治神宮前"; saitan_kyori = infinity; temae_list = []}]