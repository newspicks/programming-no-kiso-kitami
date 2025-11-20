#use "../metro_data/metro_data.ml"
#use "./quiz13-6.ml"

let ikebukuro = {namae="池袋"; saitan_kyori = infinity; temae_list = []} 
let otemachi = {namae="大手町"; saitan_kyori = 0.8; temae_list = ["大手町"; "日本橋"]} 
let myogadani = {namae="茗荷谷"; saitan_kyori = 0.; temae_list = ["茗荷谷"]} 
let korakuen = {namae="後楽園"; saitan_kyori = infinity; temae_list = []} 
let stations = [ikebukuro; otemachi; myogadani; korakuen] 

(* 目的:直前に確定した駅 p と、未確定の駅のリスト v を受け取り、必要な更新処理を行った後の未確定の駅のリストを返す *)
(* koushin: eki_t -> eki_t list -> eki_t list *)
let koushin p v = let f q = koushin1 p q in List.map f v

let test1 = koushin otemachi [] = [] 
let test2 = koushin otemachi stations = 
 [ikebukuro; otemachi; myogadani; korakuen] 