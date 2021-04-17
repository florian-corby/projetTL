(* =========================================== *)
(* AUTEUR: Florian Legendre                    *)
(* OBJECTIF DE CE MODULE: Être une banque de   *)
(* fonctions qui implantantent l'automate du   *)
(* langage L4. L'automate lui-même est testé   *)
(* dans automateEnDurEx3Tests.ml               *)
(* =========================================== *)


(* ----------------------- *)
(*  Fonctions Auxiliaires  *)
(* ----------------------- *)

let explode m = List.init (String.length m) (String.get m);;


(* ----------------------- *)
(*  Fonctions Principales  *)
(* ----------------------- *)

let reconnaitRec_3 m =
  match m with
  | [] -> true
  | firstCarac::tl -> false
;;

let rec reconnaitRec_2 m =
  match m with
  | [] -> false
  | firstCarac::tl -> if(firstCarac = 'c') then reconnaitRec_2 tl
                      else if(firstCarac = 'a') then reconnaitRec_3 tl
                      else false                                                        
;;

let rec reconnaitRec_1 m =
  match m with
  | [] -> false
  | firstCarac::tl -> (if(firstCarac = 'b') then reconnaitRec_1 tl
                       else if(firstCarac = 'a') then reconnaitRec_3 tl
                       else false) || reconnaitRec_2 m
;;

let reconnaitRec_0 m =
    match m with
    | [] -> false
    | firstCarac::tl -> if(firstCarac = 'a') then (reconnaitRec_1 tl) || (reconnaitRec_2 tl)
                        else false
;;

let reconnaitL4 m  =
  reconnaitRec_0 (explode m)
;;
