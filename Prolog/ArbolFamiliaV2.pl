%Hechos_Madre
madreDe(abuela2, carmenRosa).
madreDe(carmenRosa, yolanda).
madreDe(yolanda, luis).
madreDe(yolanda, luisa).
madreDe(carmenRosa, marisela).
madreDe(marisela, johanna).
madreDe(marisela, julian).
madreDe(marisela, nicolasL).
madreDe(ana, mariana).
madreDe(ana, nikolas).
madreDe(carmenRosa, jose).
madreDe(belsi, nicolasV).
madreDe(belsi, patrisia).
madreDe(patrisia, andres).
madreDe(belsi, camilo).
madreDe(carmenRosa, ildefonso).
madreDe(ildefonso, ligia).
madreDe(carmenRosa, arnulfo).
%Hechos_Padre
padreDe(abuelo2, nicolasVel).
padreDe(nicolasVel, yolanda).
padreDe(antonio, luis).
padreDe(antonio, luisa).
padreDe(nicolasVel, marisela).
padreDe(pedro, johanna).
padreDe(pedro, julian).
padreDe(pedro, nicolasL).
padreDe(nicolasL, mariana).
padreDe(nicolasL, nikolas).
padreDe(nicolasVel, jose).
padreDe(jose, nicolasV).
padreDe(jose, patrisia).
padreDe(patrisia, andres).
padreDe(jose, camilo).
padreDe(nicolasVel, ildefonso).
padreDe(ildefonso, ligia).
padreDe(nicolasVel, arnulfo).
%Hechos_Esposos
esposode(carmenRosa,nicolasVel).
esposode(jose,belsi).
esposode(nicolasL,ana).
esposode(antonio,yolanda).

cunadode(A,B):-hermanode(A,C),esposode(C,B).
cunadode(A,B):-hermanode(B,C),esposode(C,A).
suegrode(A,B):-padrede(A,C),esposode(C,B).
yernoynuerade(A,B):-suegrode(B,A).
feliz(A):-not(esposode(A,B)).
