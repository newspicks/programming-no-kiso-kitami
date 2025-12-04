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
  List.map (fun q -> match (p, q) with 
	     ({namae = pn; saitan_kyori = ps; temae_list = pt}, 
	      {namae = qn; saitan_kyori = qs; temae_list = qt}) -> 
		let distance = get_ekikan_kyori pn qn global_ekikan_list in
    if distance = infinity
      then q
    else 
      let new_distance_candidate = ps +. distance in
		  if new_distance_candidate < qs 
		    then 
          {namae = qn;
           saitan_kyori = new_distance_candidate;
           temae_list = qn :: pt} 
		  else q
  ) v 

let ikebukuro = { namae = "池袋"; saitan_kyori = infinity; temae_list = []}
let shinotsuka = { namae = "新大塚"; saitan_kyori = 1.2; temae_list = ["新大塚";"茗荷谷"] }
let myogadani = { namae = "茗荷谷"; saitan_kyori = 0.; temae_list = ["茗荷谷"]}

let stations = [ikebukuro;shinotsuka;myogadani;]
let test1 = koushin ikebukuro [] = []
let result = koushin ikebukuro stations 