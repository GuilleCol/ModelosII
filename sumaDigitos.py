def sumarDigito(numero):
    if(numero <10):
        return numero
    else:
        return (numero%10) + sumarDigito(int(numero/10))

print(sumarDigito(1236))

