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
let getDigit c =
  match c with
  | '0' -> 0 | '1' -> 1 | '2' -> 2 | '3' -> 3 | '4' -> 4
  | '5' -> 5 | '6' -> 6 | '7' -> 7 | '8' -> 8 | '9' -> 9
  | _ -> failwith("ERROR IN charDigitToInt => This isn't a digit")
;;


(* ----------------------- *)
(*  Fonctions Principales  *)
(* ----------------------- *)

let rec evalueReel_Virgule m partieEnt posDec partieDec =
  match m with
  | [] -> (true, partieEnt, posDec, partieDec)
  | firstCarac::tl -> if(isCiffer firstCarac)
                      then evalueReel_Virgule tl partieEnt
                             (posDec+1) (partieDec*10 + (getDigit firstCarac))
                      else (false, 0, 0, 0)
;;

let rec evalueReel_Nombre m partieEnt posDec partieDec =
  match m with
  | [] -> (false, 0, 0, 0)
  | firstCarac::tl -> if(isCiffer firstCarac)
                      then evalueReel_Nombre tl (partieEnt*10 + (getDigit firstCarac)) 0 0
                      else if(isComma firstCarac)
                      then evalueReel_Virgule tl partieEnt 0 0
                      else (false, 0, 0, 0)
;;

let evalueReel_Signe m partieEnt posDec partieDec =
  match m with
  | [] -> (false, 0, 0, 0)
  | firstCarac::tl -> if(isCiffer firstCarac)
                      then evalueReel_Nombre tl (getDigit firstCarac) 0 0
                      else (false, 0, 0, 0)
;;

let evalueReel_0 m partieEnt posDec partieDec =
  match m with
  | [] -> (false, 0, 0, 0)
  | firstCarac::tl -> if(isCiffer firstCarac)
                      then evalueReel_Nombre tl (getDigit firstCarac) 0 0
                      else if(isBinOp firstCarac)
                      then evalueReel_Signe tl 0 0 0
                      else (false, 0, 0, 0)
;;

let evalueReel m =
  let (recBoolean, partieEnt, posDec, partieDec) = evalueReel_0 (explode m) 0 0 0 in
  let resEval = (float_of_int partieEnt)
                +. (float_of_int partieDec) /. 10.**(float_of_int posDec) in
      
  if(recBoolean && m.[0] = '-')
  then (recBoolean, (-1. *. resEval))
  else (recBoolean, resEval)
;;


(* Note: 
Pas d'inquiétude pour la "division par 0", cf. cas où il n'y a pas de 
nombre après la virgule, car 10^0 = 1 *)
