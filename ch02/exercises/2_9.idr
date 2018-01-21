module Main

palindrome : String -> Bool
palindrome xs =
  let low = toLower xs in low == (reverse low)

isPalindrome : String -> String
isPalindrome xs = (show $ palindrome xs) ++ "\n"

main : IO ()
main = repl "Enter a string: " isPalindrome
