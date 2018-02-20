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

def palindromo(numero):
    if(numeroDigitos(numero) <= 1):
        return "Palindromo"
    if(numero%10 == invertir(numero)%10):
        return palindromo(int(numero - ((10**(numeroDigitos(numero)-1))*(numero/(10**(numeroDigitos(numero)-1)))))/10)
    else:
        return "No palindromo"

        
print ( palindromo(43234) )
print ( palindromo(143234) )
print ( palindromo(1432341) )
