

type name = string  

type id = int  
type level = int  


type ty = 
    | TConst of name  
    | TApp of ty * ty list  
    | TArrow of ty list * ty  
    | TVar of tvar ref  
    | TForall of id list * ty  

and tvar = 
    | Unbound of id * level  
    | Link if ty 
    | Generic of id   
    | Bound of id  

let rec unlink = function 
    

let rec is_monomorphic = function  


let ty_ann = id list * ty   


