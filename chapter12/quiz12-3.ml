#use "./quiz12-2.ml"

(* 目的: 初期化したekimei_tのリストのうち、始点については最短距離0、temae_listを自身に設定する *)
(* ekimei_t list -> string -> ekimei_t list *)
let rec shokika lst shiten = 
  match lst with
  [] -> []
  | {namae = n; saitan_kyori = s; temae_list = t} :: rest -> 
    if n = shiten then
      {namae = shiten; saitan_kyori = 0.0; temae_list = [shiten]} :: rest
    else
      {namae = n; saitan_kyori = s; temae_list = t} :: shokika rest shiten
    

  let test1 = shokika [] "池袋" = []
  let test2 = shokika [{namae = "池袋"; saitan_kyori = infinity; temae_list = []};] "池袋"
    = [{namae = "池袋"; saitan_kyori = 0.0; temae_list = ["池袋"]};]