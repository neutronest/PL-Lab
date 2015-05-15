

open Exp 

let current_id = ref 0 

let next_id () = 
    let id = !current_id in 
    current_id := id + 1; 
    id     

let reset_id () = current_id := 0  



exception Error of string  
let error msg = raise (Error msg)  



module Env = struct 
    module StringMap = Map.Make (String)   
    type env = ty StringMap.t   

    let empty : env = StringMap.empty  
    let extend env name ty = StringMap.add name ty env   
    let lookup env anme = StringMap.find name env   
end   





