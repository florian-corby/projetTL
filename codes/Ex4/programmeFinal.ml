(* =========================================== *)
(* AUTEUR: Florian Legendre                    *)
(* OBJECTIF DE CE MODULE: Être le programme    *)
(* final qui sera compilé en un exécutable.    *)
(* Il est basé sur le travail produit dans les *)
(* deux autres .ml de ce dossier.              *)
(* =========================================== *)

open EvalueReels;;

let main =
while true do
  let wordToRead = read_line() in
  let (isRec, res) = evalueReel wordToRead in
  if(isRec)
  then (print_string "True! Value is "; print_float res; print_newline();)
  else (print_string "False!"; print_newline();)
done;
;;

main;;
