match [] with
 [] -> 0
| first :: rest -> first;;

match [1; 2; 3] with
 [] -> 0
 | first :: rest -> first;;

match [] with
  first :: rest -> first;;

match [] with
  [] -> 0;;