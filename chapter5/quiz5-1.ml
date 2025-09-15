if 2 < 1 then 3 else 4;;
(* booleanの型でない *)
if "true" then 3.14 else 2.72;
(* then true else false *)
let string1 = "a";;
let string2 = "b";;
if "a" = "b" then false else true;;
if string1 != string2 then true else false;;
string1 != string2;;
not ( string1 = string2 );;
(* 型が異なる *)
if true < false then 1 else "2";;
if not ( 3 = 4 ) then 1 < 2 else 1 > 2;;
