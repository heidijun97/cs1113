module list
import bool
import nat

data list a =nil | con a (list a)

length:list nat -> nat
length (nil)=O
length (con n l)=S(length l)

lO: list a
lO= nil

l1:list nat
l1=con O lO

l2: list nat
l2= con (S O) (con (S(S O)) nil)

l3: list nat
l3= con (S O) (con (S(S O)) (con (S(S(S O))) nil))

len_l3:nat
len_l3= length l3

append:list a-> list a -> list a
append nil l2= l2
append (con n l1') l2 = con n (append l1' l2)
