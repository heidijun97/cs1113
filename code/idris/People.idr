module People

import Person
import list
import bool

-- a few Persons

tom: Person
tom = MkPerson "Tom" 19

mary: Person
mary = MkPerson "Mary" 20

ge: Person
ge = MkPerson "Ge" 21

daryl: Person 
daryl = MkPerson "Daryl" 19

-- a list of Persons

people: list Person
people = tom::
         mary::
         ge::
         daryl::
         nil
