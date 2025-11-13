#use "../chapter9/quiz9-9.ml"
#use "../chapter12/quiz12-1.ml"

(* 目的:ekimai_tのリストを受け取り、eki_t型のリストを作る *)
(* namaeには漢字の駅名、saitan_kyoriはinfinity、temae_listは空のリストを入れる*)
(* make_eki_list : ekimei_t list -> eki_t list *)
let rec make_eki_list temae_list = match temae_list with
    [] -> []
    | {kanji = k;} :: rest ->
      {namae = k; saitan_kyori = infinity; temae_list = []} :: make_eki_list rest 


let test1 = make_eki_list [] = []
let test2 = make_eki_list [{kanji = "池袋"; kana = "いけぶくろ"; romaji = "ikebukuro"; shozoku = "JR山手線"}] = 
  [{namae = "池袋"; saitan_kyori = infinity; temae_list = []}]

let global_eki_t_list = make_eki_list global_ekimei_list