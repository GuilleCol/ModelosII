class Punto():
    def __init__(self,valor,posicion,hijos=[]):
        self.valor=valor
        self.posicion = posicion
        self.hijos=hijos

    def agregarHijo(self,hijo):
        self.hijos.append(hijo)
        
    def setPosicion(self,posicion):
        self.posicion=posicion

    def setHijos(self,hijos):
        self.hijos=hijos

def cargarArchivo():
    return[list(linea)[:-1] for linea in open ("Laberinto.txt").readlines()]

def buscar(arbol,posicion):
    if arbol==None:
        return False
    if arbol.posicion==posicion:
        return True
    return buscarhijos(arbol.hijos,posicion) 

def buscarhijos(hijos,posicion):
    if hijos==[]:
        return False
    return buscar(hijos[0],posicion) or buscarhijos(hijos[1:],posicion)

def buscarX(Lab):
   for x in Lab:
       for y in range(len(x)):
           if x[y] == "x":
               colocarArbol(Lab.index(x),y,Lab, Punto(0,0,[])) 
                
def colocarArbol(x,y,Lab, arbol):
        raiz.setPosicion((x,y))
        arbol.setPosicion((x,y))
        raiz.setHijos([Izq(x,y,arbol,Lab),Abajo(x,y,arbol,Lab),Arriba(x,y,arbol,Lab),Der(x,y,arbol,Lab)])

def Arriba(x,y,nodo,Lab):
    print((x,y)," -> ARRIBA")
    if(x-1>=0 and Lab[x-1][y]!="1"):
        if(buscar(nodo,(x-1,y))!=True):
            nodo.agregarHijo(Punto(Lab[x-1][y],(x-1,y),[]))
            return Punto(Lab[x-1][y],(x-1,y),[Abajo(x-1,y,nodo,Lab),Arriba(x-1,y,nodo,Lab),Abajo(x-1,y,nodo,Lab),Der(x-1,y,nodo,Lab)])
        else:
            return None
    else:
        return None

def Abajo(x,y,nodo,Lab):
    print((x,y)," -> ABAJO")
    if(x+1<=len(Lab)-1 and Lab[x+1][y]!="1"):
        if(buscar(nodo,(x+1,y))!=True):
            nodo.agregarHijo(Punto(Lab[x+1][y],(x+1,y),[]))
            return Punto(Lab[x+1][y],(x+1,y),[Abajo(x+1,y,nodo,Lab),Arriba(x+1,y,nodo,Lab),Izq(x+1,y,nodo,Lab),Der(x+1,y,nodo,Lab)])
        else:
            return None
    else:
        return None

def Izq(x,y,nodo,Lab):
    print((x,y)," -> IZQUIERDA")
    if(y-1>=0 and Lab[x][y-1]!="1"):
        if(buscar(nodo,(x,y-1))!=True):
            nodo.agregarHijo(Punto(Lab[x][y-1],(x,y-1),[]))
            return Punto(Lab[x][y-1],(x,y-1),[Abajo(x,y-1,nodo,Lab),Arriba(x,y-1,nodo,Lab),Izq(x,y-1,nodo,Lab),Der(x,y-1,nodo,Lab)])
        else:
            return None
    else:
        return None

def Der(x,y,nodo,Lab):
    print((x,y)," -> DERECHA")
    if(y+1<=len(Lab[x])-1 and Lab[x][y+1]!="1"):
        if(buscar(nodo,(x,y+1))!=True):
            nodo.agregarHijo(Punto(Lab[x][y+1],(x,y+1),[]))
            return Punto(Lab[x][y+1],(x,y+1),[Abajo(x,y+1,nodo,Lab),Arriba(x,y+1,nodo,Lab),Izq(x,y+1,nodo,Lab),Der(x,y+1,nodo,Lab)])
        else:
            return None
    else:
        return None
