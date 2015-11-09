module listTest
import nat
import list
import Person
import People
import pet
import bool
import nathw
import foo


--length
l1: nat
l1= length ((S O):: ((S(S O)):: nil))

--append
app:list nat
app= append ((S O):: (S(S O)):: nil) ((S O) :: nil)

--testcases for map


ages: list Nat
ages =map age people

names:list String
names= map name people

animalnames: list String
animalnames= map name pets

empty1: list bool
empty1= map dog pets

map22: list bool
map22= map evenb (O::(S O)::(S (S O))::(S (S (S (S O))))::nil)


filter22:list nat
filter22=filter evenb (O::(S O)::(S (S O))::(S (S (S (S O))))::nil)



 
