let kyosuukai a b c = false

let test1 = kyosuukai 1.0 2.0 1.0 = false
let test2 = kyosuukai 1.0 3.0 1.0 = false
let test3 = kyosuukai 1.0 1.0 1.0 = true


let kyosuukai a b c = b ** 2.0 -. 4.0 *. a *. c < 0.0



let test1 = kyosuukai 1.0 2.0 1.0 = false
let test2 = kyosuukai 1.0 3.0 1.0 = false
let test3 = kyosuukai 1.0 1.0 1.0 = true