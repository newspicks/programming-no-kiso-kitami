(* 学生一人分のデータ (名前、点数、成績) を表す型 *)
type gakusei_t = {
  namae: string;     (* 名前 *)
  tensuu: int;       (* 点数 *)
  seiseki: string;   (* 成績 *)
}

(* gakusei_t list は
  - [] 空リスト、あるいは
  -  first :: rest 最初の要素がfirstで残りのリストが rest 
              (first は gakusei_t 型、 
              rest は 自己参照のケース)
   *)


(* 目的: 学生リスト lst のうち、成績が "A" の学生の数を返す *)
(* count_A : gakusei_t list -> int *)
let rec count_A lst = match lst with 
    [] -> 0
    | { namae = n; tensuu = t; seiseki = s } :: rest -> 
        if s = "A" then 1 + count_A rest
                   else count_A rest;;

let test1 = count_A [] = 0
let test2 = count_A [{ namae = "山田"; tensuu = 80; seiseki = "B" }] = 0
let test3 = count_A [{ namae = "山田"; tensuu = 90; seiseki = "A" }] = 1
let test4 = count_A [{ namae = "山田"; tensuu = 90; seiseki = "A" };
                     { namae = "佐藤"; tensuu = 70; seiseki = "C" };
                     { namae = "鈴木"; tensuu = 85; seiseki = "A" }] = 2