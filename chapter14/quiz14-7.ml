#use "../metro_data/metro_data.ml"

type eki_t = {
  namae: string;
  saitan_kyori: float;
  temae_list: string list;
}


(* 目的:漢字の駅名とekikan_tのリストを受け取り、駅間の距離を返す *)
(* get_ekikan_kyori: string -> string -> ekikan_t list -> float *)
let rec get_ekikan_kyori station1 station2 lst = match lst with
  [] -> infinity
  | {kiten = ki; shuten = sh; kyori = ky} :: rest ->
    if (ki = station1 && sh = station2) || (ki = station2 && sh = station1)
      then ky
      else get_ekikan_kyori station1 station2 rest
  
(* 目的:直前に確定した駅pと、未確定の駅のリストvを受け取り、必要な更新処理を行った後の未確定の駅のリストを返す *)
(* koushin: eki_t -> eki_t list -> eki_t list *)
let koushin p v =
  let koushin1 p q = match (p, q) with
    ({namae = pn; saitan_kyori = pk; temae_list = pl},
     {namae = qn; saitan_kyori = qk; temae_list = ql}) ->
      let kyori = get_ekikan_kyori pn qn global_ekikan_list in
      if kyori = infinity
        then q
        else if pk +. kyori < qk
        then {namae = qn; saitan_kyori = pk +. kyori; temae_list = qn :: pl}
        else q
  in
  let f q = koushin1 p q in List.map f v