module UDHaskell where
--1--
invertirLista::[a]->[a]
invertirLista [] = []
invertirLista (x:xs) = invertirLista xs ++ [x]

--2--
sumaNumPares::[Int]->Int
sumaNumPares [] = 0
sumaNumPares (x:xs) = sumlista ([x | x <- (x:xs), numPar(x)])

--2 Recursiva--
rsumaNumPares::[Int]->Int
rsumaNumPares [] = 0
rsumaNumPares (b:bs)
   | numPar(b) = b + rsumaNumPares (bs)
   | otherwise = rsumaNumPares (bs)

--3--
cantidadNumImpares::[Int]->Int
cantidadNumImpares [] = 0
cantidadNumImpares (x:xs) = tamLista ([x | x <- (x:xs), numImpar(x)])

--3 Recursivo--
rcantidadNumImpares::[Int]->Int
rcantidadNumImpares [] = 0
rcantidadNumImpares (b:bs)
   | numImpar(b) = 1 + rcantidadNumImpares (bs)
   | otherwise = rcantidadNumImpares (bs)

--4 Recursivo--
contieneListaRec::[Int]->[Int]->Bool
contieneListaRec [] [] = True
contieneListaRec [] (y:ys) = True
contieneListaRec (x:xs) [] = True
contieneListaRec (x:xs) (y:ys) = lista y (x:xs) && contieneListaRec (x:xs) ys

--5--
maximo::[Int]->Int
maximo [x] = x
maximo (x:n:xs)
    | x >= n = maximo (x:xs)
    | otherwise = maximo (n:xs)

-- OTROS --

numImpar::Int->Bool
numImpar n = n `mod` 2 == 1

numPar::Int->Bool
numPar n = n `mod` 2 == 0

tamLista::[a]->Int
tamLista [] = 0
tamLista (_:xs) = 1 + tamLista xs

sumlista::[Int]->Int
sumlista [] = 0
sumlista (b:bs) = b + sumlista (bs)

lista::Int->[Int]->Bool
lista n [] = False
lista n (x:xs) = if n == x then True
                    else lista n xs