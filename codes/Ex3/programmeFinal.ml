(* =========================================== *)
(* AUTEUR: Florian Legendre                    *)
(* OBJECTIF DE CE MODULE: Être le programme    *)
(* final qui sera compilé en un exécutable.    *)
(* Il est basé sur le travail produit dans les *)
(* deux autres .ml de ce dossier.              *)
(* =========================================== *)

open AutomateEnDurEx3;;

let main =
while true do
  let wordToRead = read_line() in
  if(reconnaitL4 wordToRead)
  then (print_string "True!"; print_newline();)
  else (print_string "False!"; print_newline();)
done;
;;

main;;
