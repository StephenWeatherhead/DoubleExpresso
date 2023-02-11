lexer grammar DELexer;

Number: '-'? Digits '.' Digits
    | '-'? Digits
    ;

Identifier : Letter LetterOrDigit*
    ;

PLUS: '+';
MINUS: '-';
MULT: '*';
DIV: '/';

OPEN_PARENS: '(';
CLOSE_PARENS: ')';

fragment LetterOrDigit : Letter
    | [0-9]
    ;

fragment Digits : [0-9] ([0-9]* [0-9])?
    ;

fragment Letter : [a-zA-Z]
    ;