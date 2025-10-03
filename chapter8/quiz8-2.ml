(* おこづかいのデータを表す型 *)
type okozukai_t = { 
  name: string;   (* 名前 *)
  price: int;     (* お小遣い *)
  place: string;  (* 買った場所 *)
  date: string;   (* 買った日 *)
}

let candy = {
  name = "キャンディ"; 
  price = 120; 
  place = "コンビニ"; 
  date = "2024/06/01"
}

let chocolate = {
  name = "チョコレート"; 
  price = 150; 
  place = "スーパー"; 
  date = "2024/06/02"
}

let gummy = {
  name = "グミ"; 
  price = 100; 
  place = "ドラッグストア"; 
  date = "2024/06/03"
}