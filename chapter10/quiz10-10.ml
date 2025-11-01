#use "../chapter9/quiz9-9.ml"

(* 目的:ローマ字と駅名リストを受け取り、対応する漢字の駅名をかえす*)
(* romaji_to_kanji -> string -> ekimei_t list -> string *)
(* 例: romaji_to_kanji "yoyogiuehara" global_ekimei_list *)
let rec romaji_to_kanji romaji lst = match lst with 
  [] -> ""
  | {kanji = k; romaji = r} :: rest ->
     if romaji = r then k
     else romaji_to_kanji romaji rest

let test1 = romaji_to_kanji "yoyogiuehara" global_ekimei_list = "代々木上原"
let test2 = romaji_to_kanji "shibuya" global_ekimei_list = "渋谷"

let test3 = romaji_to_kanji "John Doe" global_ekimei_list = ""
let test4 = romaji_to_kanji "" global_ekimei_list = ""