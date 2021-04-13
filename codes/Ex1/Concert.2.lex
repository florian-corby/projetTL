%{
    char* codeDossier;
    char* prenomNom;
    int nbPlaces = 0;
    int nbConcerts = 0;
%}

alpha [a-zA-Z]
codeConcert ^T[0-9]{2,6}
codeDossier [0-9]{8}
date [0-9][0-9]\/[0-9]{1,2}(\/[0-9][0-9])?
FL (\n)
heure [0-9][0-9]:[0-9][0-9]
ignore [\t ]+
nbPlaces [1-9]?[0-9]
nomConcert [A-Z0-9]([A-Z0-9]|(-[A-Z0-9]))*
nomPropre {alpha}({alpha}|(-{alpha}))*
prenomNom ^{nomPropre}\/{nomPropre}


%%
{codeConcert}    {nbConcerts++;}
{codeDossier}    {codeDossier=strdup(yytext);}
{date}		 {}
DOSSIER		 {}
<<EOF>>		 {return 0;}
{FL}		 {}
{heure}		 {}
{ignore}	 {}
{nbPlaces}	 {nbPlaces+=strtol(yytext, NULL, 10);}
{nomConcert}	 {}
places		 {}
{prenomNom}	 {prenomNom=strdup(yytext);}

%%
int main()
{
    yylex();
    printf("Pour le dossier %s, %s a acheté %i places de %i concerts\n", 
	   codeDossier, prenomNom, nbPlaces, nbConcerts);
}
