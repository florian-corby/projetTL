(* =========================================== *)
(* AUTEUR: Florian Legendre                    *)
(* OBJECTIF DE CE MODULE: Être une banque de   *)
(* tests des fonctions qui implantantent       *)
(* la fonction d'évaluation des réels. Ces     *)
(* fonctions étant dans evalueReels.ml         *)
(* =========================================== *)

#use "evalueReels.ml";;


(* ----------------------- *)
(*     Valeurs de tests    *)
(* ----------------------- *)

let mots = ["123."; "123.45"; "-123."; "+123.34"; "-123.34";
            "12A3.34"; "123..33"; "123.34.44"; ".34"];;
let nbMots = List.length mots;;
let launchTests = List.map (fun mot -> evalueReel mot);;



(* ----------------------- *)
(*          Tests          *)
(* ----------------------- *)

explode (List.nth mots 3);;
evalueReel (List.nth mots 2);;
launchTests mots;;
