module gunrow
import nathw
import list

data country= Argentina|Australia|Austria|Honduras|USA

||| A record of this type represents a country and the death rate per 10,000,000 by gun for homocides, suicides, unintentional,other

data gunrow=mkGunrow country Nat Nat Nat Nat

argen:gunrow
argen=mkGunrow Argentina 190 279 64 362

austral:gunrow
austral= mkGunrow Australia 11 62 5 8

austri:gunrow
austri=mkGunrow Austria 18 268 1 8

hond:gunrow
hond=mkGunrow Honduras 6480 0 0 0

us:gunrow
us=mkGunrow USA 355 670 16 9


homocideper10M:gunrow->Nat
homocideper10M (mkGunrow c h s u o)= h

suicideper10M:gunrow->Nat
suicideper10M (mkGunrow c h s u o)=s

unintentional10M:gunrow->Nat
unintentional10M (mkGunrow c h s u o)=u

other10M:gunrow->Nat
other10M (mkGunrow c h s u o)=o

listgunrow:list gunrow
listgunrow = cons argen (cons austral (cons austri (cons hond (cons us nil))))
