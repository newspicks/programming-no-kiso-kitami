(* 目的:リストlst1とlst2を連結する *)
(* append : 'a list -> 'a list -> 'a list *)
let rec append lst1 lst2 = match lst1 with
  [] -> lst2
  | first :: rest ->
    first :: (append rest lst2)

  let test1 = append [] [] = []
  let test2 = append [1; 2; 3] [] = [1; 2; 3]
  let test3 = append [] [4; 5; 6] = [4; 5; 6]

  let test4 = append [1; 2; 3] [4; 5; 6] = [1; 2; 3; 4; 5; 6]