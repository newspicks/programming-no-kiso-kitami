
(* 目的: 2つの駅名の距離をかえす*)
(* get_ekikan_kyori -> string -> string -> ekimei_t list -> float *)
let rec get_ekikan_kyori ekimei1 ekimei2 global_ekimei_list = match global_ekimei_list with
  [] -> infinity
  | {kiten = k; shuten = s; kyori = kr} :: rest -> 
    if (ekimei1 = k && ekimei2 = s) || (ekimei = s && ekimei2 = k)
      then kr
    else get_ekikan_kyori ekimei1 ekimei2 rest

  let test = get_ekikan_kyori "代々木上原" "明大前" global_ekikan_list = 2.5
