let abs x =
  if x >= 0 then x
  else (-x)

(***********************************)
(* Part 1: Non-Recursive Functions *)
(***********************************)

let rev_tup (tup : 'a * 'b) = failwith "unimplemented"
let rev_triple (tup : 'a * 'b * 'c) = failwith "unimplemented"

let is_odd x = failwith "unimplemented"

let is_older (date1: int * int * int) (date2: int * int * int) = failwith "unimplemented"

let to_us_format (date1: int * int * int) = failwith "unimplemented"
(*******************************)
(* Part 2: Recursive Functions *)
(*******************************)

let rec pow x p = failwith "unimplemented"

let rec fac n = failwith "unimplemented"

(*****************)
(* Part 3: Lists *)
(*****************)

let rec get_nth ((idx:int), (lst: 'a list)) = failwith "unimplemented"

let larger lst1 lst2 = failwith "unimplemented"

let sum lst1 lst2 = failwith "unimplemented"
