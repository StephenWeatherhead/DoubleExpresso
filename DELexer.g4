Number : '-'? Digits '.' Digits
    | '-'? Digits
    ;

Identifier : Letter LetterOrDigits*
    ;

fragment LetterOrDigit : Letter
    | [0-9]
    ;

fragment Digits : [0-9] ([0-9]* [0-9])?
    ;

fragment Letter : [a-zA-Z]
    ;