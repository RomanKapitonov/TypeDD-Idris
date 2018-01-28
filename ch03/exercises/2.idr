import Data.Vect

-- zipWith : (a -> b -> c) -> Vect n a -> Vect n b -> Vect n c
-- zipWith f []        []        = []
-- zipWith f (x :: xs) (y :: ys) = f x y :: zipWith f xs ys

createEmpties : Vect n (Vect 0 elem)
createEmpties = replicate _ []

transposeMat : Vect m (Vect n elem) -> Vect n (Vect m elem)
transposeMat [] = createEmpties
transposeMat (x :: xs) = let transposed = transposeMat xs in
                             zipWith (::) x transposed

addMatrix : Num a => Vect n (Vect m a) -> Vect n (Vect m a) -> Vect n (Vect m a)
addMatrix (x::xs) (y::ys) = zipWith (+) x y :: addMatrix xs ys

multRow : Num a => Vect n a -> Vect n a -> Vect n a
multRow = zipWith (*)

something : Num a => Vect n (Vect m a) -> Vect m a -> Vect n a
something [] _           = []
something (row::rows) ys = rowSum :: something rows ys
  where rowSum = sum $ multRow row ys

multMatrix : Num a => Vect n (Vect m a) -> Vect m (Vect p a) -> Vect n (Vect p a)
multMatrix xs ys = transpose $ map (something xs) (transpose ys)
