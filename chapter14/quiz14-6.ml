type gakusei_t = {
  namae : string;
  tensuu : int;
  seiseki : string;
}


let a_student = { namae = "山田"; tensuu = 90; seiseki = "A" }
let b_student = { namae = "佐藤"; tensuu = 80; seiseki = "B" }
let c_student = { namae = "鈴木"; tensuu = 70; seiseki = "C" }

(* 目的: gakusei_tのリストと成績を受け取り、指定した成績の学生数をかえす *)
(* count: gakusei_t list -> int *)
let rec count lst seiseki0 =
  let match_seiseki0 gakusei = gakusei.seiseki = seiseki0 in
  let result = List.filter match_seiseki0 lst in
  List.length(result)


 let test_1 = count [] "A" = 0 
 let test_2 = count [] "B" = 0 
 let test_3 = count [] "C" = 0 
 let test_4 = count [a_student;] "A" = 1
 let test_5 = count [a_student;b_student;] "A" = 1
 let test_6 = count [a_student;b_student;c_student] "A" = 1
 let test_7 = count [a_student;a_student;c_student] "A" = 2
 let test_8 = count [a_student;b_student;c_student] "B" = 1