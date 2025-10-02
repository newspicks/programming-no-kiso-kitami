(* 目的: x座標とy座標の組で表された平面座標をふたつ受け取り、その中点の座標を返す *)
(* chuuten: (float * float) -> (float * float) -> (float * float) *)
let chuuten coordinate1 coordinate2 = match coordinate1, coordinate2 with
  (x1, y1), (x2, y2) -> ((x1 +. x2) /. 2.0, (y1 +. y2) /. 2.0)

let test1 = chuuten (1.0, 2.0) (3.0, 4.0) = (2.0, 3.0)
let test2 = chuuten (0.0, 0.0) (0.0, 0.0) = (0.0, 0.0)
let test3 = chuuten (-1.0, 5.0) (1.0, 2.0) = (0.0, 3.5)