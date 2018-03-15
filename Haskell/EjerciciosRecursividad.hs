module Recursividad where

--Ejericios--

divi::Int->Int->Int -- Division
divi n m = if n < m then 0
               else 1 + divi (n - m) m

fibo::Int->Int -- Fibonacci
fibo n
   | n == 0 = 0
   | n == 1 = 1
   | otherwise = fibo (n - 1) + fibo (n - 2)

inv::Int->Int -- Invertir Numeros
inv n = if n < 10 then n
             else ultDig n * 10 ^ long (n `div` 10) + inv (n `div` 10)

long::Int->Int -- Saber Longitud
long n = if n < 10 then 1
             else 1 + long (n `div` 10)

mayDig::Int->Int -- Mayor Digito
mayDig n
   | n < 10 = n
   | n `mod` 10 > mayDig (n `div` 10) = n `mod` 10
   | otherwise = mayDig (n `div` 10)

pal::Int->Bool -- Numero Palindromo
pal n
   | long n <= 1 = True
   | priDig n == ultDig n = pal (remExt n)
   | otherwise = False

pot::Int->Int->Int -- Potencia del Numero
pot m n
   | n == 0 = 1
   | n == 1 = m
   | otherwise = m * pot m (n - 1)

pro::Int->Int->Int -- Producto de Numeros
pro m n
   | m == 0 = 0
   | m == 1 = n
   | otherwise = n + pro n (m - 1)

sumDig::Int->Int -- Suma de los digitos
sumDig n = if n < 10 then n
                else n `mod` 10 + sumDig (n `div` 10)

--OTROS--

remExt::Int->Int -- Remover Extremos
remExt n
   | long n <= 2 = n
   | otherwise = (n `div` 10) - priDig n * 10 ^ (long n - 2)
   
priDig::Int->Int -- Saber Primer Digito
priDig n = ultDig (inv n)

ultDig::Int->Int -- Saber Ultimo Digito
ultDig n = if n < 10 then n
                 else n - (n `div` 10) * 10