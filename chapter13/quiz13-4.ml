let rec compose f g x = f (g x)

let add3 x = x + 3;;
let times2 x = x * 2;;

let test1 = compose times2 add3 4 = 14
let test2 = compose (fun x -> x * x) (fun x -> x + 2) 5 = 49