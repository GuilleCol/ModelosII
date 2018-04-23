class punto:
    def __init__(self, valor,izq=None,der=None):
        self.valor=valor
        self.izq=izq
        self.der=der

def inorden(arbol):
  if arbol != None:
      inorden(arbol.izq)
      print(arbol.valor)
      inorden(arbol.der)

def buscar(arbol,valor):
    if arbol==None:
        return False
    if arbol.valor==valor:
        return True
    if valor<arbol.valor:
        return buscar(arbol.izq,valor)
    return buscar(arbol.der,valor)
      
def insertar (arbol,valor):
    if arbol==None:
        return punto(valor)
    if valor<arbol.valor:
        return punto(arbol.valor,insertar(arbol.izq,valor),arbol.der)
    return punto(arbol.valor,arbol.izq,insertar(arbol.der,valor))
      
def listarEnArbol(arbol, lista):
    if lista==[]:
        return arbol
    else:
        return listarEnArbol(insertar(arbol,lista[0]),lista[1:])
    
inorden(listarEnArbol((punto(5,punto(10,punto(15)),punto(55, punto(25)))),[5,50,20,30,35,45,40]))
