#use "../chapter9/quiz9-10.ml"

(* 目的: 2つの駅名の距離をかえす*)
(* get_ekikan_kyori -> string -> string -> ekimei_t list -> float *)
let rec get_ekikan_kyori ekimei1 ekimei2 global_ekimei_list = match global_ekimei_list with
  [] -> infinity
  | {kiten = k; shuten = s; keiyu = ke; kyori = kr; jikan = j} :: rest ->
    if (ekimei1 = k && ekimei2 = s) || (ekimei1 = s && ekimei2 = k)
      then kr
    else get_ekikan_kyori ekimei1 ekimei2 rest

let test1 = get_ekikan_kyori "代々木上原" "代々木公園" global_ekikan_list = 1.0
let test2 = get_ekikan_kyori "代々木公園" "代々木上原"  global_ekikan_list = 1.0
let test3 = get_ekikan_kyori "代々木上原" "明治神宮前" global_ekikan_list = infinity
let test4 = get_ekikan_kyori "明治神宮前" "代々木上原" global_ekikan_list = infinity

let test5 = get_ekikan_kyori "中野坂上" "新中野" global_ekikan_list = 1.1
let test6 = get_ekikan_kyori "ななしのごんべえ" "中野坂上" global_ekikan_list = infinity
let test7 = get_ekikan_kyori "中野坂上" "ななしのごんべえ" global_ekikan_list = infinity
