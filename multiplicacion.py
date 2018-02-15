def producto (n,m):
    if(m == 0):
        return 0
    if(m == 1):
        return n
    if(m > 1):
        return n + producto(n, m-1)

print( producto(30,90))
