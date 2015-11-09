module relationTestofPet

import relation
import list
import bool
import pair
import ite
import nathw
import pet

numberofdogs:Nat
numberofdogs= query2 pets dog countOne plus 0

animalagesum:Nat
animalagesum= query2 pets dog age plus 0


aveAge: pair Nat Nat
aveAge= mkPair (animalagesum) (numberofdogs)
--more simplified form of aveAge
AveAge: pair Nat Nat
AveAge=ave_rel pets dog age
