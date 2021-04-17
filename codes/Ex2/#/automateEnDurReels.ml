(* =========================================== *)
(* AUTEUR: Florian Legendre                    *)
(* OBJECTIF DE CE MODULE: Être une banque de   *)
(* des fonctions implantante l'automate des    *)
(* réels. L'automate lui-même est testé dans   *)
(* automateEnDurReelsTests.ml                  *)
(* =========================================== *)


(* ----------------------- *)
(*  Fonctions Auxiliaires  *)
(* ----------------------- *)

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

let truncateWord m =
  String.sub m 1 ((String.length m) - 1)
;;


(* ----------------------- *)
(*  Fonctions Principales  *)
(* ----------------------- *)

let rec reconnaitRec_Virgule(m : string) : bool =
  if(m = "")
  then true
  
  else
    (
      let firstCarac = extractFirstChar m in
      let truncatedWord = truncateWord m in

      if(isCiffer firstCarac)
      then reconnaitRec_Virgule truncatedWord

      else false
    )
;;

let rec reconnaitRec_Nombre(m : string) : bool =
  if(m = "")
  then false

  else
    (
      let firstCarac = extractFirstChar m in
      let truncatedWord = truncateWord m in
  
      if(isCiffer firstCarac)
      then reconnaitRec_Nombre truncatedWord

      else if(isComma firstCarac)
      then reconnaitRec_Virgule truncatedWord

      else false
    )
;;

let reconnaitRec_Signe(m : string) : bool =
  if(m = "")
  then false

  else
    (
      let firstCarac = extractFirstChar m in
      let truncatedWord = truncateWord m in
  
      if(isCiffer firstCarac)
      then reconnaitRec_Nombre truncatedWord

      else false
    )
;;


let reconnaitRec_0(m : string) : bool =
  if(m = "")
  then false

  else
    (
      let firstCarac = extractFirstChar m in
      let truncatedWord = truncateWord m in
  
      if(isCiffer firstCarac)
      then reconnaitRec_Nombre truncatedWord

      else if(isBinOp firstCarac)
      then reconnaitRec_Signe truncatedWord

      else false
    )
;;


let reconnaitReelRec(m : string) : bool =
  reconnaitRec_0 m
;;
