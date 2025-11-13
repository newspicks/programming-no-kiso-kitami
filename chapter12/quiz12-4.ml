#use "./quiz12-3.ml"


let ekimei_list = [ 
{kanji="池袋"; kana="いけぶくろ"; romaji="ikebukuro"; shozoku="丸ノ内線"}; 
{kanji="新大塚"; kana="しんおおつか"; romaji="shinotsuka"; shozoku="丸ノ内線"}; 
{kanji="茗荷谷"; kana="みょうがだに"; romaji="myogadani"; shozoku="丸ノ内線"}; 
{kanji="後楽園"; kana="こうらくえん"; romaji="korakuen"; shozoku="丸ノ内線"}; 
{kanji="本郷三丁目"; kana="ほんごうさんちょうめ"; romaji="hongosanchome"; shozoku="丸ノ内線"}; 
{kanji="御茶ノ水"; kana="おちゃのみず"; romaji="ochanomizu"; shozoku="丸ノ内線"} 
] 

(* 目的：昇順に並んでいる lst の正しい位置に ekimei を挿入する *) 
(* ekimei_insert : ekimei_t list -> ekimei_t -> ekimei_t list *) 
let rec ekimei_insert lst ekimei = match lst with 
    [] -> [ekimei] 
  | ({kanji = k; kana = a; romaji = r; shozoku = s} as ekimei_first) :: rest -> 
      match ekimei_first with {kanji = kf; kana = af; romaji = rf; shozoku = sf} -> 
       (*かなが同じなら除去*)
	      if a = af then ekimei_insert rest ekimei_first 
	      else if a < af then ekimei :: ekimei_insert rest ekimei_first 
	      else ekimei_first :: lst 

(* 目的：ekimei list をひらがなの順に整列しながら駅の重複を取り除く *) 
(* seiretsu : ekimei_t list -> ekimei_t list *) 
let rec seiretsu ekimei_list = match ekimei_list with 
    [] -> [] 
  | first :: rest -> ekimei_insert (seiretsu rest) first 
 

  (* テスト *) 