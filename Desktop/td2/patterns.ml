# let f x "y" = if "y"="" || x<=0 then invalid_arg"" else true ;;




 # let rec build_line x "y"  = if f x "y"= true then 
 let g x "y" = match x with 
                 1 -> "y"
              |_ (build_line (x-1) "y")^"y"
           else f 0 "y"  ;;

# let prt x "y" = print_string (build_line x "y") && print_newline();;
# let square x "y" = 
     if f x "y" = true
     then
              begin match x with 
              1 -> prt 1 "y" 
            |_ -> prt (x-1) "y" 
                         end 
    else f 0 "y" ;;

# let square2 x ("y","z") = if "z"="" then f 0 "y" else if f x "y" = true then
 let "a"="y"^"z" in 
      match x with 
   1-> prt 1 "a"                     
   _ -> prt (x-1) "a"
      else f 0 "a"  ;; 

# let triangle x "y" = if f x "y" = true
 then let rec g a "y" = match x with 
        x when a=x -> square x "y" 
     |_-> square (a+1) "y" and g (a+1) "y"
 in g 1 "y"  
else f 0 "y" ;;
