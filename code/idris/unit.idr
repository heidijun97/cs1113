module unit
import bool
import eq
import Serialize
data unit= mkUnit

u: unit-> unit
u mkUnit= mkUnit

id_unit:unit->unit
id_unit mkUnit=mkUnit

eql_unit:unit->unit->bool
eql_unit u1 u2=true

instance eq unit where
   eql u1 u2=eql_unit u1 u2

instance Serialize unit where 
  toString u="()"

