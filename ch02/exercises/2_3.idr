palindrome : String -> Bool
palindrome xs =
  let low = toLower xs in low == (reverse low)

