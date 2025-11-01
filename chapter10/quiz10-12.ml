#use "../chapter9/quiz9-10.ml"
#use "./quiz10-10.ml"
#use "./quiz10-11.ml"

(* 目的: 2つの駅名を受け取り、駅間の距離を表示する*)
(* kyori_wo_hyouji -> string -> string -> ekimei_t list -> ekikan_t list -> string *)
let kyori_wo_hyouji ekimei1 ekimei2 global_ekimei_list global_ekikan_list = match global_ekikan_list with
  [] -> ""
  | {kiten = k; shuten = s; kyori = ky; _} :: rest ->
    let kanji1 = romaji_to_kanji ekimei1 global_ekimei_list in
    let kanji2 = romaji_to_kanji ekimei2 global_ekimei_list in
    if (kanji1 = "") 
      then ekimei1 ^ "という駅は存在しません。"
    else if (kanji2 = "")
      then ekimei2 ^ "という駅は存在しません。"
    else
    let _k = get_ekikan_kyori kanji1 kanji2 global_ekikan_list in
    if _k = infinity then
      kanji1 ^ "駅から" ^ kanji2 ^ "駅はつながっていません。"
    else
      kanji1 ^ "駅から" ^ kanji2 ^ "駅までは" ^ string_of_float _k ^ "kmです。"

  let test1 = kyori_wo_hyouji "yoyogiuehara" "yoyogikouen" global_ekimei_list global_ekikan_list = "代々木上原駅から代々木公園駅までは1.kmです。"
  let test2 = kyori_wo_hyouji "yoyogikouen" "meijijinguumae" global_ekimei_list global_ekikan_list = "代々木公園駅から明治神宮前駅までは1.2kmです。"
  let test3 = kyori_wo_hyouji "AAAA" "BBBB" global_ekimei_list global_ekikan_list = "AAAAという駅は存在しません。"
  let test4 = kyori_wo_hyouji "yoyogiuehara" "BBBB" global_ekimei_list global_ekikan_list = "BBBBという駅は存在しません。"
  let test5 = kyori_wo_hyouji "yoyogiuehara" "meijijinguumae" global_ekimei_list global_ekikan_list = "代々木上原駅から明治神宮前駅はつながっていません。"