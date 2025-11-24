let rec fold_right f lst init = match lst with
  [] -> init
  | first :: rest -> f first (fold_right f rest init)


(* 目的:整数のリストを受け取り、偶数のみをかえす *)
(* even : int list -> int list *)
let even lst = 
    List.filter (fun x -> x mod 2 = 0) lst

let even_test_1 = even [] = []
let even_test_2 = even [2] = [2]
let even_test_3 = even [1] = []
let even_test_4 = even [-1] = []
let even_test_5 = even [-2] = [-2]
let even_test_6 = even[1;2] = [2]
let even_test_7 = even[-2;2] = [-2;2]



(* 学生一人分のデータ (名前、点数、成績) を表す型 *)
type gakusei_t = {
  namae: string;     (* 名前 *)
  tensuu: int;       (* 点数 *)
  seiseki: string;   (* 成績 *)
}

let a_student = { namae = "山田"; tensuu = 90; seiseki = "A" }
let b_student = { namae = "佐藤"; tensuu = 80; seiseki = "B" }
let c_student = { namae = "鈴木"; tensuu = 70; seiseki = "C" }

(* 目的: 学生リスト lst のうち、成績が "A" の学生の数を返す *)
(* count_A : gakusei_t list -> int *)
let rec count_A lst =
  let result = List.filter (fun x -> x.seiseki = "A") lst in
    List.length(result)
 
let count_A_test_1 = count_A [] = 0
let count_A_test_2 = count_A [a_student] = 1
let count_A_test_3 = count_A [a_student;b_student;] = 1
let count_A_test_4 = count_A [a_student;b_student;c_student;] = 1
let count_A_test_5 = count_A [b_student;c_student;] = 0




(* 目的:gakusei_tのリストを受け取り、その合計点をかえす *)
(* gakusei_sum : gakusei_t list -> int *)
let gakusei_sum lst =
  fold_right (fun gakusei rest_score -> gakusei.tensuu + rest_score
) lst 0 


let gakusei_sum_test_1 = gakusei_sum [] = 0
let gakusei_sum_test_2 = gakusei_sum [a_student] = 90
let gakusei_sum_test_3 = gakusei_sum [a_student;b_student;] = 170
let gakusei_sum_test_4 = gakusei_sum [a_student;b_student;c_student;] = 240


(* 目的: 学生リスト lst のうち、成績が "A" の学生の数を返す *)
(* count_A : gakusei_t list -> int *)
let rec count_A lst =
  let result = List.filter (fun x -> x.seiseki = "A") lst in
    List.length(result)

let count_A_test_1 = count_A [] = 0
let count_A_test_2 = count_A [a_student] = 1
let count_A_test_3 = count_A [a_student;b_student;] = 1
let count_A_test_4 = count_A [a_student;b_student;c_student;] = 1
let count_A_test_5 = count_A [b_student;c_student;] = 0



(* 目的:文字列のリストを受け取り、それを1つの文字列として結合してかえす *)
(* concat string list -> string*)
let concat lst = 
  fold_right (fun x rest -> x ^ rest) lst ""

let concat_test_1 = concat[] = ""
let concat_test_2 = concat["A"] = "A"
let concat_test_3 = concat["Z"] = "Z"
let concat_test_4 = concat["AZ"] = "AZ"


(* 目的:2つのリストを受け取り、lst1のうしろにlst2を結合する *)
(* append: 'a list -> 'a list -> 'a list *)
let rec append lst1 lst2 =
  fold_right (fun first lst -> first :: lst) lst1 lst2


let append_test_1 = append [] [] = []
let append_test_2 = append [1] [] = [1]
let append_test_3 = append [] [1] = [1]
let append_test_4 = append [1] [2] = [1;2]
let append_test_5 = append [1;2;3;] [4;5;6;] = [1;2;3;4;5;6;]