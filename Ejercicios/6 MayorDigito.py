def mayorDigito(numero):
    if numero < 10:
        return numero
    if (numero% 10) > mayorDigito(int(numero / 10)):
        return (numero % 10)
    else:
        return mayorDigito(int(numero / 10))

print ( mayorDigito(input("Ingrese un numero: ")))

