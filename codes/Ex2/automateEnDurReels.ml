(* =========================================== *)
(* AUTEUR: Florian Legendre                    *)
(* OBJECTIF DE CE MODULE: Être une banque de   *)
(* des fonctions implantante l'automate des    *)
(* réels. L'automate lui-même est testé dans   *)
(* automateEnDurReelsTests.ml                  *)
(* =========================================== *)

let extractFirstChar m =
  String.get m 0
;;

let isCiffer c =
  c >= '0' && c <= '9'
;;

let isBinOp c =
  c = '+' || c = '-'
;;

let isComma c =
  c = '.'
;;

let rec reconnaitRec_0(m : string) : bool =
  let firstCarac = extractFirstChar m in
  if(isCiffer c) then reconnaitRec_Nombre 
;;


(*let rec reconnaitRec_Signe(m : string) : bool =
;;


let rec reconnaitRec_Nombre(m : string) : bool =
;;


let rec reconnaitRec_Virgule(m : string) : bool =
;;*)
