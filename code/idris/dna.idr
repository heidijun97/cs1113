module dna

import list
import pair
import nathw
data base=A|T|C|G

complement_base: base->base
complement_base A=T
complement_base T=A
complement_base C=G
complement_base G=C

strandlist: list base
strandlist= A::T::C::G::nil

complement_strand: list base
complement_strand =map complement_base strandlist

basepairs: list (pair base base)
basepairs= (mkPair A T):: (mkPair T A):: (mkPair C G):: (mkPair G C) :: nil

strand1: list base
strand1= map first basepairs

strand2: list base
strand2= map second basepairs

takes:base->pair base base
takes b=mkPair b (complement_base b)

complete:list (pair base base)
complete=map takes strandlist

strandexample:list base
strandexample= A::T::A::C::nil

change:base->nat
change A=S O
change _=O

mapChange:list nat
mapChange= map change strandexample

countBase:nat
countBase= list.foldr add O mapChange
