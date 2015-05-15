
{
open Parser  

exception Error
}



let ident = ['_' 'A'-'Z' 'a'-'z'] ['_' 'A'-'Z' 'a'-'z' '0'-'9']*
let integer = ['0'-'9']+   


rule token = parse  
    | [' ']




let string_of_token = function
    | FUN -> "fun"
    | LET -> "let"
    | IN -> "in"
    | FORALL -> "forall"
    | IDENT ident -> ident  
    | LPAREN -> "("

