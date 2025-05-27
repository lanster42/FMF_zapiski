(* Hitro izbiranje *)
let rec razdeli pivot lst levi desni = 
  match lst with
  | [] -> (levi, desni)
  | gl :: rep ->
      if gl < pivot then razdeli pivot rep (gl :: levi) desni
      else razdeli pivot rep levi (gl :: desni)

let rec hitro_izberi lst k =
  match lst with
  | [] -> failwith "prekratek seznam"
  | [x] -> x
  | gl :: rep ->
      let levi, desni = razdeli gl rep [] [] in
      let velikost_levih = List.length levi in
      if k = velikost_levih + 1 then gl
      else if k <= velikost_levih then hitro_izberi levi k
      else hitro_izberi desni (k - velikost_levih - 1)

(* Najbližji par točk v ravnini *)
let razdalja (x1, y1) (x2, y2) =
  let raz1 = x2 -. x1 in
  let raz2 = y2 -. y1 in
  sqrt (raz1 *. raz1 +. raz2 *. raz2)

let grobo_najblizji_par tocke =
  let rec aux min_razdalja naj_par = function
    | [] | [_] -> naj_par
    | gl :: rep -> let nov_par, nova_min_razdalja = List.fold_left (fun (najboljsi, naj_r) q -> let r = razdalja gl q in
              if r < naj_r then (Some (gl, q), r) else (najboljsi, naj_r))
            (naj_par, min_razdalja) rep in
        aux nova_min_razdalja nov_par rep in
  match tocke with
  | p1 :: p2 :: ps -> aux (razdalja p1 p2) (Some (p1, p2)) tocke
  | _ -> None

let najblizji_par tocke =
  let urejene_tocke = List.sort (fun (x1, _) (x2, _) -> compare x1 x2) tocke in
  let rec rekurzivno_najblizji pts =
    match pts with
    | [] | [_] -> None
    | [p1; p2] -> Some (p1, p2)
    | _ -> let mid = List.length pts / 2 in
        let levi_del = List.filteri (fun i _ -> i < mid) pts in
        let desni_del = List.filteri (fun i _ -> i >= mid) pts in
        let najblizji_levo = rekurzivno_najblizji levi_del in
        let najblizji_desno = rekurzivno_najblizji desni_del in
        let najboljsi_par =
          match (najblizji_levo, najblizji_desno) with
          | Some (p1, p2), Some (p3, p4) -> if razdalja p1 p2 < razdalja p3 p4 then Some (p1, p2) else Some (p3, p4)
          | Some par, None | None, Some par -> Some par
          | None, None -> None in
        najboljsi_par in
  rekurzivno_najblizji urejene_tocke

(* 1: Coin Sums *)
let st_nacinov_vsote vsota kovanci =
  let rec aux vsota kovanci =
    match (vsota, kovanci) with
    | (0, _) -> 1
    | (_, []) -> 0
    | (v, gl :: rep) when v >= 0 -> aux (v - gl) (gl :: rep) + aux v rep
    | _ -> 0 in
  aux vsota kovanci

(* st nacinov za £2 *)
let st_nacinov =
  st_nacinov_vsote 200 [1; 2; 5; 10; 20; 50; 100; 200]

(* 2: Maximum Path Sum II *)
let rec najvecja_vsota_poti trikotnik =
  match trikotnik with
  | [] -> 0
  | [vrh] -> List.hd vrh
  | _ -> let zadnja = List.hd (List.rev trikotnik) in
      let predzadnja = List.nth trikotnik (List.length trikotnik - 2) in
      let nova_vrstica = List.mapi (fun i x -> x + max (List.nth zadnja i) (List.nth zadnja (i + 1))) predzadnja in
      najvecja_vsota_poti (List.rev (nova_vrstica :: List.tl (List.rev trikotnik)))

(* 3: Red, Green, and Blue Tiles *)
let rec stevilo_nacinov_tlaka dolzina =
  if dolzina < 0 then 0 else if dolzina = 0 then 1 else
    stevilo_nacinov_tlaka (dolzina - 1) +
    stevilo_nacinov_tlaka (dolzina - 2) +
    stevilo_nacinov_tlaka (dolzina - 3) +
    stevilo_nacinov_tlaka (dolzina - 4)

(* st za 50 tiles *)
let nacini_tlaka_50 = stevilo_nacinov_tlaka 50