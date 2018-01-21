palindrome : String -> Bool
palindrome xs =
  if length xs > 10
  then
    let low = toLower xs in low == (reverse low)
  else
    False
