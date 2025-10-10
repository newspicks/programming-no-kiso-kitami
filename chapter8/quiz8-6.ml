#use "quiz8-5.ml"

(* ekimei_t型のデータを受け取り，駅名を表示する関数 *)
(* hyoji: ekimei_t -> string *)
let hyoji ekimei = match ekimei with
{ kana = a; shozoku = s; kanji = k; romaji = _; } ->
  s ^ "," ^ k ^ "(" ^ a ^ ")";;

hyoji { kanji = "池袋"; kana = "いけぶくろ"; romaji = "ikebukuro"; shozoku = "JR山手線"};;