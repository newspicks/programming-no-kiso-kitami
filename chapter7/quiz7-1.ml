(* 国語, 数学, 英語, 理科, 社会の5教科の合計点と平均点を求める *)
(* goukei_to_heikin : int -> int -> int -> int -> int -> int * int *)
let goukei_to_heikin kokugo suugaku eigo rika shakai =
  let goukei = kokugo + suugaku + eigo + rika + shakai in
  let heikin = goukei / 5 in
  goukei, heikin;;

let test1 = goukei_to_heikin 80 70 90 85 75 = (400, 80)

let test2 = goukei_to_heikin 60 65 70 75 80 = (350, 70)
