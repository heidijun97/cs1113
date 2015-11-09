module list
import bool
import nat
import Person
import ite
import nathw 
import eq
import Serialize

data list a=nil |  (::) a (list a)

infixr 7 ::, ++

length:list a -> nat
length (nil)=O
length (n::l)=S (length l)

append:  list a->list a -> list a
append nil l2= l2
append (n :: l1') l2 = n :: (append l1' l2)

||| append as an infix operator ++
(++): list a ->list a -> list a 
(++) nil l2=l2
(++) (h::t) l2=h::(t++l2)

|||map a function over the elements of a list
map: (a->c)->list a-> list c
map f nil= nil
map f (h :: t)= (f h) :: (map f t)


|||give a list and a predicate on elements
|||return the sublist of elements for which the predicate is true
filter: (a->bool)->list a->list a
filter f nil= nil
filter f (h::t)= ite (f h)(h::(filter f t))(filter f t)

foldr: (a -> a -> a) -> a -> list a -> a
foldr f id nil = id
foldr f id (h::t) = f h (list.foldr f id t)


member:(eq a)=>a-> list a->bool
member v nil=false
member v (h::t)=ite (eql v h) true (member v t)


instance (eq a)=> eq (list a) where
  eql nil nil= true
  eql (h::t) nil=false
  eql nil (h::t)= false
  eql (h1::t1) (h2::t2)= and (eql h1 h2) (eql t1 t2)
  
subset_element: (eq a) => list a-> list a -> bool
subset_element nil l = true
subset_element (h::t) l = and (member h l) (subset_element t l)

same_elements: (eq a) => list a-> list a-> bool
same_elements l1 l2=and (subset_element l2 l1) (subset_element l1 l2)


listString:(Serialize a, eq a) => list a-> String
listString nil=""
listString (h::t) = ite (eql t nil)
                  (toString h)
                  ((toString h) ++ "," ++ (listString t))


instance (Serialize a, eq a)=> Serialize (list a) where
  toString nil = "[]"
  toString l = "{"++ listString l++"}"
  













