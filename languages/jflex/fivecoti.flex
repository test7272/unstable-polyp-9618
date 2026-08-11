%%
%class Hello
%unicode
%%
[^\n]+   { System.out.println(yytext()); }

