


open Batteries
open Printf  
open Arg   

let title = "Md2HTML"



let opt_file = ref "file.txt" 
let opt_output = ref "out"
let opt_html = ref false  
let opt_std = ref false 

let speclist = 
    [("-f", Arg.Set_string opt_output, "Name of the output file");
     ("-h", Arg.Set opt_html, "Convert to HTML" ); 
     ("-s", Arg.Set opt_std, "Print in standard output");]




let parse
