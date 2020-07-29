%{

/*
   As secoes do codigo-fonte sao divididas por %%, da seguinte forma:

   SECAO 1 - DEFINICOES
   %%
   SECAO 2 - REGRAS
   %%
   SECAO 3 - SUBROTINAS

   */

  /* Os delimitadores %{ e %} separam codigo C na secao de definicoes */

#include <stdio.h>
#include <string.h>

/* Criteiros de desempate:
   1 - Maior match
   2 - Regra que vem antes */
%}


LETRA   [a-zA-Z]
DIGITO  [0-9]
SIMBOLO [\-_.]
ALPHANUM [a-zA-Z0-9]+
ALPHASYM [a-zA-Z0-9\-_.]

PALAVRA  {LETRA}+
INTEIRO  {DIGITO}+


%%


{ALPHANUM}+ ;
{ALPHANUM}+({ALPHASYM}+{ALPHANUM}+)*@{ALPHANUM}+({ALPHASYM}+{ALPHANUM}+)* { printf("%s\n", yytext);}








[[:punct:]]+ ;
[[:space:]]+ ;
[\n]* ;
[[:^space:]]+;


%%

int main() {
  yylex();
  //printf("Acumulador %f\n", acumulador);
  return 0;
}
