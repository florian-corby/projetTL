(* =========================================== *)
(* AUTEUR: Florian Legendre                    *)
(* OBJECTIF DE CE MODULE: Être une banque de   *)
(* des tests des fonctions qui implantante     *)
(* l'automate des réels. Les fonctions sont    *)
(* définies dans automateEnDurReels.ml         *)
(* =========================================== *)

#use "automateEnDurEx3.ml";;


(* ----------------------- *)
(*     Valeurs de tests    *)
(* ----------------------- *)

let mots = ["abbcca"; "accca"; "abbccccba"; "abbbccccccab"];;
let nbMots = List.length mots;;
let launchTests = List.map (fun mot -> reconnaitL4 mot);;



(* ----------------------- *)
(*          Tests          *)
(* ----------------------- *)

explode (List.nth mots 3);;
reconnaitL4 (List.nth mots 0);;
launchTests mots;;
