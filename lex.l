%{
#include<stdio.h>
%}

%%
(Destiny) {printf("Noun:%s\n", yytext);}
(Dread|Run|arrives) {printf("verb:%s\n", yytext);}
(it) {printf("pronoun:%s\n", yytext);}
(from) {printf("preposition:%s\n", yytext);}
(same) {printf("adjective:%s\n", yytext);}
(all|the) {printf("Determiner/article:%s\n", yytext);}
[\t\n]+

%%
int yywrap(void){}
int main(){
    yyin = fopen("text.txt", "r");
    yylex();
    fclose(yyin);
    return 0;
}



[2:43 PM] Davange, Pratik
- name: Create an HTML file in the Nginx web root

  copy:

    dest: /var/www/html/index.html

    content: |

      <!DOCTYPE html>

      <html>

      <head>

          <title>Welcome to Nginx</title>

      </head>

      <body>

          <h1>Hello from Ansible!</h1>

          <p>This is a simple HTML file served by Nginx.</p>

      </body>

      </html>

    owner: www-data

    group: www-data

    mode: '0644'

 
