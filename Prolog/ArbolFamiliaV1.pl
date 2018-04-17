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

%Reglas
esBisAbuelaDe(A,B):-esAbuelaDe(A,B).
%Abuelo
esAbuelaDe(A,B) :- madreDe(A, N), madreDe(N, B).
esAbuelaDe(A,B) :- padreDe(A, N), padreDe(N, B).
esAbuelaDe(A,B) :- padreDe(A, N), madreDe(N, B).
esAbuelaDe(A,B) :- madreDe(A, N), padreDe(N, B).
%Nieto
esNietoDe(A, B) :- esAbuelaDe(B, A).
%Hermano
esHermanoDe(A, B) :- madreDe(N, A), madreDe(N, B), not(A=B).
esHermanoDe(A, B) :- padreDe(N, A), padreDe(N, B), not(A=B).
%Sobrino
esSobrinoDe(A, B) :- esHermanoDe(N, A), madreDe(N, B).
esSobrinoDe(A, B) :- esHermanoDe(N, A), padreDe(N, B).
%tio
esTioDe(A, B) :- esSobrinoDe(B, A).
%Primo
esPrimoDe(A, B) :- esTioDe(A, N), madreDe(N, B), not(A=B).
esPrimoDe(A, B) :- esTioDe(A, N), padreDe(N, B), not(A=B).
