(* =========================================== *)
(* AUTEUR: Florian Legendre                    *)
(* OBJECTIF DE CE MODULE: Être une banque de   *)
(* des tests des fonctions qui implantante     *)
(* l'automate des réels. Les fonctions sont    *)
(* définies dans automateEnDurReels.ml         *)
(* =========================================== *)

open List;;
#use "automateEnDurReels.ml";;
#trace reconnaitReelRec;;
#untrace reconnaitReelRec;;
#trace truncateWord;;
#untrace truncateWord;;
#trace launchTests;;
#untrace launchTests;;


(* ----------------------- *)
(*     Valeurs de tests    *)
(* ----------------------- *)

let mots = ["123."; "123.45"; "-123."; "+123.34"; "-123.34";
            "12A3.34"; "123..33"; "123.34.44"; ".34"];;
let nbMots = List.length mots;;
let launchTests = List.map (fun mot -> reconnaitReelRec mot);;



(* ----------------------- *)
(*          Tests          *)
(* ----------------------- *)

extractFirstChar (List.nth mots 3);;
truncateWord (List.nth mots 3);;
truncateWord "";;
reconnaitReelRec (List.nth mots 0);;
launchTests mots;;
