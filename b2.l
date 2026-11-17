chiffre   [0-9]
lettre    [a-zA-Z]
%%
for|while|if|else|do|return       { printf("<MOT-CLE:%s> ", yytext); }
{lettre}({lettre}|{chiffre})*     { printf("<SYMBOLE:%s> ", yytext); }
{chiffre}+                        { printf("<ENTIER:%s> ", yytext); }
{chiffre}+"."{chiffre}*|"."{chiffre}+   { printf("<REEL:%s> ", yytext); }
[-+*/=<>(){}\[\];,]               { printf("<OPERATEUR:%s> ", yytext); }
%%
