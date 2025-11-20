#use "../metro_data/metro_data.ml"

type eki_t = {
  namae: string;
  saitan_kyori: float;
  temae_list: string list;
}

(* 目的:漢字の駅名とekikan_tのリストを受け取り、駅間の距離を返す *)
(* get_ekikan_kyori: string -> string -> ekikan_t list -> float *)
let rec get_ekikan_kyori eki1 eki2 lst = match lst with
  [] -> infinity
  | {kiten = ki; shuten = sh; kyori = ky} :: rest ->
    if (ki = eki1 && sh = eki2) || (ki = eki2 && sh = eki1)
      then ky
      else get_ekikan_kyori eki1 eki2 rest

let test1 = get_ekikan_kyori "代々木上原" "表参道" global_ekikan_list = infinity
let test2 = get_ekikan_kyori "渋谷" "表参道" global_ekikan_list = 1.3
let test3 = get_ekikan_kyori "乃木坂" "赤坂" global_ekikan_list = 1.1

let ikebukuro = {namae="池袋"; saitan_kyori = infinity; temae_list = []} 
let otemachi = {namae="大手町"; saitan_kyori = 0.8; temae_list = ["大手町"; "日本橋"]} 
let myogadani = {namae="茗荷谷"; saitan_kyori = 0.; temae_list = ["茗荷谷"]} 

(* 目的:直前に確定した駅 p と未確定の駅 q を受け取り、ふたつが直接つながっているか調べ、 *)
(* つながっていない場合は q をそのまま返し、つながっている場合は必要に応じて最短距離とリストを更新して返す *)
(* koushin1: eki_t -> eki_t -> eki_t *)
let koushin1 p q = match (p, q) with
  ({namae = pn; saitan_kyori = pk; temae_list = pl},
   {namae = qn; saitan_kyori = qk; temae_list = ql}) ->
    let kyori = get_ekikan_kyori pn qn global_ekikan_list in
    if kyori = infinity
      then q
      else if pk +. kyori < qk
      then {namae = qn; saitan_kyori = pk +. kyori; temae_list = qn :: pl}
      else q

let test5 = koushin1 myogadani ikebukuro = ikebukuro 
let test6 = koushin1 myogadani otemachi = otemachi 
let test7 = koushin1 myogadani myogadani = myogadani 