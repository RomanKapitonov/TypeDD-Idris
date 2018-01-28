import Data.Vect

allLength : Vect len String -> Vect len Nat
allLength [] = []
allLength (word :: words) = length word :: allLength words
