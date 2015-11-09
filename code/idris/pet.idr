module pet
import bool
import list
||| A record type that is equivalent to:
||| (data Pet = mkPet String bool age)
||| but where we give names to fields.
||| A pet has a name and an age in years.Also if it is not a dog then it is false.
record Pet where
  constructor MkPet
  name: String
  dog: bool
  age: Nat

dog1:Pet
dog1= MkPet "Heidi" true 4

a:String
a= name dog1 

b:bool
b= dog dog1

cat1: Pet
cat1= MkPet "Cindy" false 13


pig1: Pet
pig1= MkPet "Wilbur" false 3


pets: list Pet
pets= dog1 :: cat1 :: pig1 :: nil 
