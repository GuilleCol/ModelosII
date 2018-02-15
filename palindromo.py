def palindromo(numero):
    if(len(numero) <= 1):
        return "Palindromo"
    if(numero[:1] == numero[-1:]):
        return palindromo(numero[1:-1])
    else:
        return "No palindromo"
        

print(palindromo("123321"))
print(palindromo("23321"))
print(palindromo("12321"))
