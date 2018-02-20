def numeroDigitos(numero):
    if(numero < 10):
        return 1
    else:
        return 1+numeroDigitos(numero/10)
    return 1

def invertir(numero):
    if(numero < 10):
        return numero
    else:
        return (10**(numeroDigitos(numero)-1))*(numero%10) + invertir(int(numero/10))
    

print(invertir(12345678))

