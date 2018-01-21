over_length : Nat -> List String -> Nat
over_length n xs = length $ filter (\xs => length xs > n) xs