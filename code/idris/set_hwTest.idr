module set_hwTest

import list
import set_spec
import bool
import pair
import option
import ite
import nat
import eq
import Serialize

-- returns mkSet (true::false::nil)
se:set bool
se= set_insert true (mkSet true::false::nil)

--takes out true from the set and returns mkSet (false::nil) 
re:set bool
re= set_remove true (mkSet true::false::nil)

--returns (S(S(S(S O)))
ca: nat
ca= set_cardinality (mkSet ((S O)::(S(S O))::(S(S(S(O)))::nil))

--returns true
sm:bool
sm=set_member true (mkSet true::false::nil)

--returns mkSet (true::false::nil)
su:set a
su= set_union (mkSet (true::nil)) (mkSet (false::nil))

--returns mkSet nil
si:set a
si=set_intersection (mkSet (S O::nil)) (mkSet ((S(S O))::nil))

--returns mkSet (true::false::nil)
sd:set a
sd= set_difference (mkSet (true::nil)) (mkSet (false::nil))

--returns false
sf:bool
sf= set_forall id (mkSet (true::false::nil))

--returns true
se2:bool
se2=set_exists id (mkSet (false::true::nil))

--returns some nat
sw: option a
sw=set_witness id (mkSet ((S O)::nil))

--returns mkSet (mkPair (S O) (S(S O)))
sp:set (pair a d)
sp= set_product (mkSet ((S O)::nil)) (mkSet ((S(S O))::nil))

--returns false
sq:bool
sq=set_eql (mkSet ((S O)::nil)) (mkSet ((S(S(S O)))::nil)

--returns {True,False}
st:String
st=set_toString (mkSet (true::false::nil))





 
