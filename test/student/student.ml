open OUnit2
open Basics

let test_sanity _ =
    assert_equal 1 1 ~msg:"Custom error message"

let test_rev_tup _ =
    assert_equal (0, "a") (rev_tup ("a", 0)) ~msg:"rev (1)"

let test_rev_triple _ =
    assert_equal ((-4), 0, "a") (rev_triple ("a", 0, (-4))) ~msg:"triple (1)"

let test_is_odd _ =
    assert_equal true (is_odd (-9)) ~msg:"odd (1)"

let test_is_older _ =
    assert_equal false (is_older (1990, 5, 4) (1990, 5, 3)) ~msg:"older (1)"

let test_to_us_format _ =
    assert_equal (11, 31, 1900) (to_us_format (1900, 11, 31)) ~msg:"us (1)"

let test_pow _ =
  assert_equal 371293 (pow 13 5) ~msg:"pow (1)"

let test_fac _ =
  assert_equal 362880 (fac 9) ~msg:"fac (1)"

let test_get_nth _ =
  assert_equal (-420) (get_nth(5, [2; 4; 5; (-69); 0; (-420); 850])) ~msg:"nth (1)"

let test_larger _ =
  assert_equal [1;3;4;4;5;6] (larger [2;4;5;6;7] [1;3;4;4;5;6]) ~msg:"larger (1)"

let test_sum _ =
  assert_equal 420 (sum [1;1;2;3;5;8] [100;100;200]) ~msg:"sum (1)"

let suite =
  "student" >::: [
    "sanity" >:: test_sanity;
    "rev_tup" >:: test_rev_tup;
    "rev_triple" >:: test_rev_triple;
    "is_odd" >:: test_is_odd;
    "is_older" >:: test_is_older;
    "to_us_format" >:: test_to_us_format;
    "pow" >:: test_pow;
    "fac" >:: test_fac;
    "get_nth" >:: test_get_nth;
    "larger" >:: test_larger;
    "sum" >:: test_sum
  ]

let _ = run_test_tt_main suite
