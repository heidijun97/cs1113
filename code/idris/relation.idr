module relation


import bool
import list
import nathw
import pair
import ite


query: (v -> v -> v) -> v -> 
         (a -> v) -> (a -> bool) -> 
            (list a) -> v
query reduce id project select relation =
       list.foldr reduce id (map project (filter select relation))

query2:  (list a) -> (a -> bool) -> (a -> v) ->
            (v -> v -> v) -> v -> v
query2 relation select project reduce id =
         list.foldr reduce id (map project (filter select relation))

countOne: a -> Nat
countOne v = 1


count_rel: (list a) -> (a -> bool) -> Nat
count_rel rel sel = query2 rel sel countOne plus 0

sum_rel: (list a) -> (a-> bool) -> (a -> Nat) -> Nat
sum_rel rel sel proj = query2 rel sel proj plus 0

ave_rel:
    (list a) -> (a -> bool) -> (a -> Nat) -> pair Nat Nat
ave_rel rel sel proj =
   mkPair (sum_rel rel sel proj) (count_rel rel sel)

