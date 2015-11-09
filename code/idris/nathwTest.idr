module nathwTest

import bool
import nat
import nathw
import list


--add
a:nat
a= add (S(S O)) (S(S(S O)))

--mult
m:nat
m= mult (S(S(S O))) (S(S O))

--fact
f:nat
f= fact (S(S O)) 

--expp
e:nat
e= expp (S(S O)) (S(S O))

--fib
fi:nat
fi= fib (S(S(S(S O)))) 

--subp
s:nat
s= subp (S(S O)) (S O)

--lep
l:bool
l= lep (S(S O)) (S(S(S O)))
l1:bool
l1= lep (S(S O)) (S O)

--list length
le: nat
le= length ((S O)::(S(S O))::nil)

--list append

app:list nat
app= append ((S O):: ((S(S O))::nil)) ((S(S O)):: nil)

--eqp
eq:bool
eq=eqp (S(S O)) (S O)
eq1:bool
eq1= eqp (S O) (S(S O))

--gtp
g:bool
g= gtp (S O) (S(S O))
g1:bool
g1= gtp (S(S O)) (S O)

--gep
ge:bool
ge= gep (S O) (S(S O))
ge1:bool
ge1= gep (S(S O)) (S O)








