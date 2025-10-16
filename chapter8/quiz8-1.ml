(* 本のデータを表す型 *)
type book_t = { 
  title: string;     (* 本のタイトル *)
  author: string;    (* 著者名 *)
  publisher: string; (* 出版社名 *)
  price: int;        (* 価格 *)
  isbn: string;      (* ISBN *)
}

type book_t_neo = { 
  title: string;     (* 本のタイトル *)
  author: string;    (* 著者名 *)
  publisher: string; (* 出版社名 *)
  price: int;        (* 価格 *)
  isbn: string;      (* ISBN *)
}


let wagahaiwa_neko_dearu = { 
  title = "吾輩は猫である"; 
  author = "夏目漱石"; 
  publisher = "筑摩書房"; 
  price = 400; 
  isbn = "4-480-00101-2" 
};;

let yukiguni = { 
  title = "雪国"; 
  author = "川端康成"; 
  publisher = "新潮社"; 
  price = 500; 
  isbn = "4-10-100101-2" 
};;

let bocchan : book_t = { 
  title = "坊っちゃん"; 
  author = "夏目漱石"; 
  publisher = "岩波書店"; 
  price = 300; 
  isbn = "4-00-310101-2" 
};;

let title (book : book_t)  = 
  book.title;;

title bocchan;;