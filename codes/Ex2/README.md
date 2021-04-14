# Manuel d'utilisation du programme final


## Auteur de ce programme
Florian Legendre


## En quelle version d'Ocaml a été compilé le programme?
ocaml-4.08.1


## Comment utiliser le programme final?
1. Avec Bash aller dans projetTL/codes/Ex2
2. Entrer ./programmeFinal
3. Écrire une quelconque chaîne de caractère. Le programme renvoit True si c'est un réel, False sinon.


## Et si le programme ne marche pas? 
Toujours dans Bash (cf. section précédente), entrez: 
```
ocamlopt -o programmeFinal automateEnDurReels.ml programmeFinal.ml
```
À présent il est compilé selon votre version d'Ocaml et devrait fonctionner selon la procédure indiquée
dans la section précédente.
