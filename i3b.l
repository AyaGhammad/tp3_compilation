%%
a[ab]*|[ab]*a     { printf("%s : Accepte", yytext); }
[a-z]+      {printf("%s : Refuse",yytext);}
[ \t\n]     { printf("%s", yytext); }
.          { printf("[%s non reconnu]", yytext); }
%%

