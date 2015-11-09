module fib

import nathw
import pair

fib: nat-> nat
fib O=O
fib (S O)= (S O)
fib (S(S n))= addp (mkPair (fib (S n)) (fib n))

 
