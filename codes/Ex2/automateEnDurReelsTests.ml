(* =========================================== *)
(* AUTEUR: Florian Legendre                    *)
(* OBJECTIF DE CE MODULE: Être une banque de   *)
(* des tests des fonctions qui implantante     *)
(* l'automate des réels. Les fonctions sont    *)
(* définies dans automateEnDurReels.ml         *)
(* =========================================== *)

open List;;
#use "automateEnDurReels.ml";;

let mots = ["123."; "123.45"; "-123."; "+123.34"; "-123.34";
            "12A3.34"; "123..33"; "123.34.44"; ".34"];;

extractFirstChar (List.nth mots 3);;
