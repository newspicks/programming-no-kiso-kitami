3;;

sqrt;;

let add3 x = x + 3;;

let twice f = 
  let g x = f (f x)
  in g

let times2 x = x * 2;;

let add6 = twice add3;;

add6 8;;

add6 9;;