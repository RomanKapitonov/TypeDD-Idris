counts : String -> (Nat, Nat)
counts xs = (length $ words xs, length xs)
