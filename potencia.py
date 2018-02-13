def potencia (n,m):
    if (m == 0):
        return 1
    if (m > 0):
        return n * potencia(n,m-1)

n = input("Digite el valor de n: ")
m = input("Digite el valor de m: ")

print (potencia(n,m))
