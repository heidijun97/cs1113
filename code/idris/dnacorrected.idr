module dnacorrected

import list 
import pair
import nathw

data base= A|T|C|G

complement_base:base->base
complement_base A=T
complement_base T=A
complement_base C=G
complement_base G=C

complement_strand: (a->a)->list a->list a
complement_strand complement_base (h::t)=(complement_base h)::(map complement_base t) 

strand1:(pair base base-> base)-> list (pair base base)->list base
strand1 first ((mkPair a b)::t)= first (mkPair a b)::(map first t)
 
strand2:(pair base base-> base)->list (pair base base)-> list base
strand2 second ((mkPair a b)::t)=first (mkPair a b)::(map second t)

takes:base->pair base base
takes b=mkPair b (complement_base b)

complete: (base ->pair base base)->list base-> list (pair base base)
complete takes (h::t)= (takes h)::(map takes t)




strandexample:list base
strandexample= A::T::A::C::nil

change:base->nat
change A=S O
change _=O

mapChange:list nat
mapChange= map change strandexample

countBase:nat
countBase= list.foldr add O mapChange
