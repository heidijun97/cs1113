module boolTest
import bool
import Serialize

{--this is a new test case file for the new bool.idr file--}

--id
a:bool
a= id true

a1:bool
a1=id false

--constFalse
b:bool
b= constFalse true

b1:bool
b1=constFalse false

--constTrue

c:bool
c= constTrue false

c1:bool
c1=constTrue true

--Not
d:bool
d=not true

d1:bool
d1=not false

--or
e:bool
e= or false false

e1:bool
e1= or true true

e2:bool
e2= or false true

e3:bool
e3= or true false

--nand
f:bool
f= nand true false

f1:bool
f1=nand false true

f2:bool
f2= nand false false

f3:bool
f3= nand true true

--xor
g:bool
g= xor true true

g1:bool
g1= xor false false

g2:bool
g2= xor true false

g3:bool
g3= xor false true

s:String
s= toString true


