(* x座標とy座標を受け取り、x軸について対象な点の座標を返す *)
(* taisho_x: float * float -> float * float *)
let taisho_x coordinate = match coordinate with
  (x, y) -> (-.x, y)

let test1 = taisho_x (1.0, 2.0) = (-1.0, 2.0)
let test2 = taisho_x (0.0, 0.0) = (0.0, 0.0)