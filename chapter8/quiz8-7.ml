type ekikan_t = {
  kiten: string;  (* 起点の駅名 *)
  shuuten: string; (* 終点の駅名 *)
  keiyu: string;   (* 経由する路線名 *)
  kyori: float;   (* 2駅間の距離 *)
  jikan: int;    (* 2駅間の所要時間 *)
}

let myogadani = { kiten = "茗荷谷"; shuuten = "後楽園"; }