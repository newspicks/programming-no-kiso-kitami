(* (1) 'a -> 'a *)
(* 恒等関数 - 引数をそのまま返す *)
let identity x = x

(* 関数合成を使った例 *)
let apply_twice f x = f (f x)  

(* 条件によって引数を返すか変更するか *)
let conditional_identity condition x = 
  if condition then x else x 


(* (2) 'a -> 'b -> 'a *)
(* 最初の引数を返し、2番目の引数を無視する *)
let const x y = x

(* 条件に基づいて最初の引数を返すか判定 *)
let return_first_if condition x y = 
  if condition then x else x

(* 2つの引数を受け取って最初のものを返す *)
let first_of_two x y = x


(* (3) 'a -> 'b -> 'b *)
(* 2番目の引数を返し、最初の引数を無視する *)
let second x y = y

(* 最初の引数を無視して2番目を返す *)
let ignore_first x y = y

(* 副作用のある処理後に2番目の引数を返す例 *)
let process_and_return x y = 
  y


(* (4) 'a -> ('a -> 'b) -> 'b *)
(* 逆関数適用 - 値を最初に受け取って関数に適用 *)
let apply x f = f x

(* パイプライン演算子の実装 *)
let pipe x f = f x

(* 値を関数に渡す *)
let feed_to x f = f x



(* (5) ('a -> 'b) -> ('b -> 'c) -> 'a -> 'c *)
(* 関数合成 - 2つの関数を合成する *)
let compose f g x = g (f x)

(* 別名での関数合成 *)
let (@@) f g x = g (f x)

(* パイプライン風の関数合成 *)
let pipeline f g x = x |> f |> g