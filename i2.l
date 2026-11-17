%{
int isComment = 0;  
%}
%%
"/*"      { isComment= 1; }
"*/"      { if (isComment) isComment = 0; else printf("%s",yytext); }
.|\n         { if (!isComment) printf("%s",yytext); }
%%
