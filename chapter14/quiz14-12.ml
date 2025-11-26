#use "../metro_data/metro_data.ml"

type eki_t = {
  namae: string;
  saitan_kyori: float;
  temae_list: string list;
}

let make_eki_list temae_list =
   List.map (fun eki -> {namae = eki.kanji; saitan_kyori = infinity; temae_list = []}) temae_list
 
let make_initial_eki_list lst shiten = 
  List.map (fun eki -> 
    if eki.namae = shiten then
      {namae = shiten; saitan_kyori = 0.0; temae_list = [shiten]}
    else
      {namae = eki.namae; saitan_kyori = infinity; temae_list = []}
  ) lst


let test_1 = make_initial_eki_list [] "池袋" = []
let test_2 = make_initial_eki_list [{namae = "池袋"; saitan_kyori = infinity; temae_list = []}] "池袋" = 
  [{namae = "池袋"; saitan_kyori = 0.0; temae_list = ["池袋"]}]
let test_3 = make_initial_eki_list[{namae = "池袋"; saitan_kyori = infinity; temae_list = []}] "新宿" =
[ {namae = "池袋"; saitan_kyori = infinity; temae_list = []}]
let test_4 = make_initial_eki_list[{namae = "代々木上原"; saitan_kyori = infinity; temae_list = []}] "代々木公園" = 
  [{namae = "代々木上原"; saitan_kyori = infinity; temae_list = []}]