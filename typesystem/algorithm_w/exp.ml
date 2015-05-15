

type name = string 


type expr = 
    | Var of name                (* Variable *)
    | Call of expr * expr list   (* Application *)
    | Fun of name list * expr    (* Abstraction *)
    | Let of name * expr * expr  (* Let *)

type id = int  
type level = int  


type ty = 
    | TConst of name            (* Type constant: int of bool *)
    | TApp of ty * ty list      (* Type application: list[int]*)
    | TArrow of ty list * ty    (* Function Type: (int, int) -> int *)
    | TVar of tvar ref          (* Type Variable *)


and tvar = 
    | Unbound of id * level  
    | Link of ty  
    | Generic of id   


let string_of_expr expr : string = 
    let rec f is_simple = function 
        | Var name -> name  
        | Call(fn_expr, arg_list) ->  



let string_of_ty ty : string =   



