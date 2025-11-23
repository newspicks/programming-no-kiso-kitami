(* 学生一人分のデータ (名前、点数、成績) を表す型 *)
type gakusei_t = {
  namae: string;     (* 名前 *)
  tensuu: int;       (* 点数 *)
  seiseki: string;   (* 成績 *)
}

let a_student = { namae = "山田"; tensuu = 90; seiseki = "A" }
let b_student = { namae = "佐藤"; tensuu = 80; seiseki = "B" }
let c_student = { namae = "鈴木"; tensuu = 70; seiseki = "C" }


(* 目的: gakusei_tの成績がAであるかを判定する *)
(* is_A : gakusei_t -> bool *)
let is_A gakusei_t = gakusei_t.seiseki = "A"

(* 目的: 学生リスト lst のうち、成績が "A" の学生の数を返す *)
(* count_A : gakusei_t list -> int *)
let rec count_A lst =
  let result = List.filter is_A lst in
    List.length(result)

let test1 = count_A [] = 0
let test2 = count_A [a_student] = 1
let test3 = count_A [b_student] = 0
let test4 = count_A [c_student] = 0
let test5 = count_A[a_student;b_student] = 1
let test6 = count_A[a_student;c_student] = 1
let test7 = count_A[b_student;c_student] = 0
let test8 = count_A[a_student;b_student;c_student] = 1