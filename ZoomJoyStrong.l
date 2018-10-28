%{
    #include <stdio.h>
#undef yywrap
#define yywrap() 1
    void display (int);
%}

%%


END                         {printf ("End"); printf("(%s)\n", yytext); }

END_STATEMENT               {printf ("End_Statement;"); printf("(%s)\n", yytext); }

POINT                       {printf ("Point"); printf("(%s)\n", yytext); }

LINE                        {printf ("Line"); printf("(%s)\n", yytext); }

CIRCLE                      {printf ("Circle"); printf("(%s)\n", yytext); }

RECTANGLE                   {printf ("Rectangle"); printf("(%s)\n", yytext); }

SET_COLOR                   {printf ("Colora"); printf("(%s)\n", yytext); }

(INT|[0-9]+)                {printf ("Integers"); printf("(%s)\n", yytext); }

FLOAT                       {printf ("Float"); printf("(%s)\n", yytext); }

\s+                         ;

.+                          {printf ("You messed up on the previous Line!");}

%%

void display (int flag) {}

int main(int argc, char** argv) {
    yylex(); // Start lexing!
    return 0;
}
