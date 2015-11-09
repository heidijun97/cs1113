module Box
import bool
import Serialize
import eq

data Box t = mkBox t

unbox: Box t-> t
unbox (mkBox n)=n


instance (eq a) => eq (Box a) where
    eql (mkBox v1) (mkBox v2)= eql v1 v2


instance (Serialize a)=> Serialize (Box a) where
  toString (mkBox b) = "(" ++ (toString b) ++ ", )"

