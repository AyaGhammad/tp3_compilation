%%
for|while|if|else|do|return     { printf("<MOT-CLE:%s> ", yytext); }
[a-zA-Z][a-zA-Z0-9]*            { printf("<SYMBOLE:%s> ", yytext); }
[-+*/=<>(){}\[\];,]             { printf("<OPERATEUR:%s> ", yytext); }
%%
