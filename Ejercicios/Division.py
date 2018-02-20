def division(n,m):
    if(n<m):
        return 0
    return division(n-m,m)+1

n = input ("Digite el valor de n")
m = input ("Digite el valor de m")
print(division(n,m))
