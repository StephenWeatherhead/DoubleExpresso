parser grammar DEParser;

options { tokenVocab=DELexer; }

expression : Number 
    | variable
    | bracketedExpression
    | sumExpression
    | productExpression
    ;

bracketedExpression : '(' expression ')'
    ;

sumExpression : expression bop=('+'|'-') expression
    ;
    
productExpression : expression bop=('*'|'/') expression
    ;

variable : Identifier
    ;