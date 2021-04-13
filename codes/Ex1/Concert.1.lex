alpha [a-zA-Z]
codeConcert ^T[0-9]{2,6}
codeDossier [0-9]{8}
date [0-9][0-9]\/[0-9]{1,2}(\/[0-9][0-9])?
FL (\n)
heure [0-9][0-9]:[0-9][0-9]
ignore [\t ]+
nbPlaces [1-9]?[0-9](\ places)
nomConcert [A-Z0-9]([A-Z0-9]|(-[A-Z0-9]))*
nomPropre {alpha}({alpha}|(-{alpha}))*
prenomNom ^{nomPropre}\/{nomPropre}


%%
{codeConcert}    {printf("codeConcert");}
{codeDossier}    {printf("codeDossier");}
{date}		 {printf("date");}
DOSSIER          {printf("dossier");}
<<EOF>>		 {printf("FinFichier\n"); return 0;}
{FL}             {printf(" FL\n");}
{heure}		 {printf("heure");}
{ignore}	 {printf(" ");}
{nbPlaces}	 {printf("nb places");}
{nomConcert}	 {printf("nomConcert");}
{prenomNom}	 {printf("prenomNom");}
