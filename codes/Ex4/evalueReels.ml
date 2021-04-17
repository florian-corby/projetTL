(* =========================================== *)
(* AUTEUR: Florian Legendre                    *)
(* OBJECTIF DE CE MODULE: Être une banque      *)
(* des fonctions qui implantantent la fonction *)
(* d'évaluation des réels. Les tests étant     *)
(* réalisés dans evalueReelsTests.ml           *)
(* =========================================== *)


(* ----------------------- *)
(*  Fonctions Auxiliaires  *)
(* ----------------------- *)

let isCiffer c = c >= '0' && c <= '9';;
let isBinOp c = c = '+' || c = '-';;
let isComma c = c = '.';;
let explode m = List.init (String.length m) (String.get m);;


(* ----------------------- *)
(*  Fonctions Principales  *)
(* ----------------------- *)

let rec reconnaitRec_Virgule m =
  match m with
  | [] -> true
  | firstCarac::tl -> if(isCiffer firstCarac) then reconnaitRec_Virgule tl else false
;;

let rec reconnaitRec_Nombre m =
  match m with
  | [] -> false
  | firstCarac::tl -> if(isCiffer firstCarac) then reconnaitRec_Nombre tl
                      else if(isComma firstCarac) then reconnaitRec_Virgule tl
                      else false                                                             
;;

let reconnaitRec_Signe m =
  match m with
  | [] -> false
  | firstCarac::tl -> if(isCiffer firstCarac) then reconnaitRec_Nombre tl
                      else false     
;;

let reconnaitRec_0 m =
    match m with
    | [] -> false
    | firstCarac::tl -> if(isCiffer firstCarac) then reconnaitRec_Nombre tl
                        else if(isBinOp firstCarac) then reconnaitRec_Signe tl
                        else false
;;

let reconnaitReelRec m  =
  reconnaitRec_0 (explode m)
;;
