

type pos = Lexing.position 

type ident = {
    id : string; 
    pos : pos 
}


type cmp = 
    | Eq | Le | Ge | Lt | Gt | Ne  


type bin = 
    | Op_add | Op_sub | Op_mul | Op_div  
    | Ocmp of cmp  



type typ = 
    | Tname of 
