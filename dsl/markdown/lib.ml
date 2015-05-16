
open Batteries 
open Printf  


type block_state = 
    | Not_matched 
    | Begin_match 
    | Matched 
    | End_match  


let blank = "[ \r\t]*"  
let regex_title = Str.regexp 



let ending_string = "EOF\n"



module type RULE_TYPE = 
sig 
    val make_title : int -> string -> string  
    val format_list : block_state -> string -> string  
    val format_table : block_state -> string -> string  
    val begin_par : string   
    val end_par : string   
    val replace_bold : string   
    val replace_image : string  
    val replace_link : string   
end    


module Apply_rule = 
functor (Rule : RULE_TYPE) ->
struct 
    let format_text text = 
        text 
        |> Str.global_replace regex_italic Rule.
