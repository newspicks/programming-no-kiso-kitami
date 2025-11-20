let twice f = 
  let g x = f (f x)
  in g
let twicetwice = twice twice

let test1 = twicetwice (fun x -> x + 1) 1

(*
弱い型変数とは：

通常の型変数 'a は完全に多相的
弱い型変数 '_weak1 は一度具体的な型が決まると、その型に固定される
アンダースコア _ で始まる
発生する理由：

値の制限（value restriction） による
関数適用の結果が値ではなく、部分適用された関数の場合
OCamlが型安全性を保つために導入
*)