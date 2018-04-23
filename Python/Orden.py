class punto():
    def __init__(self, valor, izq = None, der = None):
        self.v= valor
        self.izq = izq
        self.der=der

def preorden(arbol):
    if arbol!=None:
        return arbol.v+preorden(arbol.izq)+preorden(arbol.der)
    else: 
        return ""   
        
def inorden(arbol):
    if arbol!=None:
        return inorden(arbol.izq)+arbol.v+inorden(arbol.der)
    else:
        return ""
    
def posorden(arbol):
    if arbol!=None:
        return posorden(arbol.izq)+posorden(arbol.der)+arbol.v
    else:
        return ""
    
arbol = punto('5 ',punto('10 '),punto('15 ',punto('20 '),punto('25 ')))

print("pre: "+preorden(arbol))
print("in: "+inorden(arbol))
print("pos: "+posorden(arbol))
