let abs x =
  if x >= 0 then x
  else (-x)

(***********************************)
(* Part 1: Non-Recursive Functions *)
(***********************************)

let rev_tup (tup : 'a * 'b) = 
  let (a,b) = tup in (b,a)
;;

let rev_triple (tup : 'a * 'b * 'c) = 
  let (a, b, c) = tup in (c, b, a)
;;

let is_odd x = 
  let res =  x mod 2 in 
  if res=0 then false else true;;

let is_older (date1: int * int * int) (date2: int * int * int) = 
  let (a, b, c) = date1 and (a2, b2, c2) = date2 in
  if a<a2 then true 
  else if a>a2 then false
  else if b<b2 then true
  else if b>b2 then false
  else if c<c2 then true
  else false
;;


let to_us_format (date1: int * int * int) = 
  let (year, month, day) = date1 in (month, day, year)
;;

(*******************************)
(* Part 2: Recursive Functions *)
(*******************************)

let rec pow x p = if p>1 then x * (pow x (p-1)) else x
;;

let rec fac n = if n=1 then 1
else n * (fac (n-1))
;;

(*****************)
(* Part 3: Lists *)
(*****************)

let rec get_nth ((idx:int), (lst: 'a list)) = 
  let n = idx and e = lst in 
  if n=0 then List.hd e 
  else get_nth (n-1, (List.tl e))
;;

let rec iter_list lst = 
  if lst = [] then 0
  else 1 + iter_list (List.tl lst)
;;

let larger lst1 lst2 = 
  if iter_list lst1 = iter_list lst2 then lst1
  else if iter_list lst1 > iter_list lst2 then lst1
  else lst2
;;

let rec sum_list lst =
  if lst = [] then 0
  else List.hd lst + sum_list (List.tl lst)
;;

let sum lst1 lst2 = 
  sum_list lst1 + sum_list lst2
;;
