(* 駅名を表すレコード型の定義 *)
type ekimei_t = {
  kanji : string; (* 駅名 *)
  kana : string;  (* 読み *)
  romaji : string; (* ローマ字 *)
  shozoku : string; (* 所属路線名 *)
}
