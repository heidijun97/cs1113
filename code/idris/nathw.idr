module nat
import bool
import eq
import Serialize
data nat=O|S nat

add:nat->nat->nat
add O m= m
add (S n) m= S (add n m)

mult:nat->nat->nat
mult O m =O
mult (S n) m= add m (mult n m)

fact: nat -> nat
fact O =(S O)
fact (S n') = mult (S n') (fact (n'))

expp: nat-> nat-> nat
expp x O = (S O)
expp x (S n) = mult x (expp x n)

fib: nat-> nat
fib O=O
fib (S O)= (S O)
fib (S(S n))= add (fib (S n)) (fib n)

subp: nat-> nat -> nat
subp O m=O
subp n O=n
subp (S n) (S m) = subp n m
eql_nat: nat-> nat -> bool
eql_nat  O O=true
eql_nat  O (S n) =false
eql_nat (S n) O = false
eql_nat (S n) (S m) = eql_nat n m

instance eq nat where
  eql n1 n2= eql_nat n1 n2

instance Serialize nat where
  toString O= "z"
  toString (S n)= "S" ++ toString n
