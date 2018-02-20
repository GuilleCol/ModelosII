def numeroDigitos(numero):
    if(numero < 10):
        return 1
    else:
        return 1+numeroDigitos(numero/10)
    return 1

print (numeroDigitos(123456))
