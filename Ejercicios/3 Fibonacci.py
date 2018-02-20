def fib(n):
        if n>2:
            return fib(n-2)+fib(n-1)
        else:
            return 1
 
if __name__ == '__main__':

   n1 = int(input("Ingresa un numero: "))
   print(fib(n1))
