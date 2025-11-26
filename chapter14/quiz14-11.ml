#use "../metro_data/metro_data.ml"


type eki_t = {
  namae: string;
  saitan_kyori: float;
  temae_list: string list;
}


(* 目的:ekimai_tのリストを受け取り、eki_t型のリストを作る *)
(* namaeには漢字の駅名、saitan_kyoriはinfinity、temae_listは空のリストを入れる*)
(* make_eki_list : ekimei_t list -> eki_t list *)
let make_eki_list temae_list =
   List.map (fun eki -> {namae = eki.kanji; saitan_kyori = infinity; temae_list = []}) temae_list

  
let eki_list_test1 = make_eki_list [] = []
let eki_list_test2 = make_eki_list [{kanji = "池袋"; kana = "いけぶくろ"; romaji = "ikebukuro"; shozoku = "JR山手線"}] = 
  [{namae = "池袋"; saitan_kyori = infinity; temae_list = []}]


(* 目的: 初期化したekimei_tのリストのうち、始点については最短距離0、temae_listを自身に設定する *)
(* ekimei_t list -> string -> ekimei_t list *)
let shokika lst shiten = 
  List.map (fun eki -> 
    if eki.namae = shiten then
      {namae = shiten; saitan_kyori = 0.0; temae_list = [shiten]}
    else
      {namae = eki.namae; saitan_kyori = eki.saitan_kyori; temae_list = eki.temae_list}
  ) lst

let shokika_test1 = shokika [] "池袋" = []
let shokika_test2 = shokika [{namae = "池袋"; saitan_kyori = infinity; temae_list = []};] "池袋"
  = [{namae = "池袋"; saitan_kyori = 0.0; temae_list = ["池袋"]};]