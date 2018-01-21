palindrome : Nat -> String -> Bool
palindrome n xs =
  if length xs > n
  then let low = toLower xs in low == (reverse low)
  else False
