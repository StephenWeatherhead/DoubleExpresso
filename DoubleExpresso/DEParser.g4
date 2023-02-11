expression : Number 
    | Identifier
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