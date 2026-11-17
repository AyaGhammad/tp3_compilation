%%
[a-z]*a[a-z]*e[a-z]*i[a-z]*o[a-z]*u[a-z]*y[a-z]*     { printf("%s : Accepte", yytext); }
[a-z]+      {printf("%s : Refuse",yytext);}
[ \t\n]     { printf("%s",yytext); }
.          { printf("[%s non reconnu]", yytext); }
%%
