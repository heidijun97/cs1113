module soccer
--team:Rachel Dick, Robert Weiner, Jae Jun
import list
import nathw

data teams= ManCity |Arsenal| ManUnited| CrystalPalace |LeicesterCity

||| data type defining the W, D, L, Points of specific soccer teams 
data scores= mkScores teams Nat Nat Nat Nat

manC: scores
manC= mkScores ManCity 6 0 2 18

arse:scores
arse=mkScores Arsenal 5 1 2 16

manU:scores
manU=mkScores ManUnited 5 1 2 16

crysP:scores
crysP=mkScores CrystalPalace 5 0 3 15

leiC:scores
leiC=mkScores LeicesterCity 4 3 1 15


listS: list scores
listS= cons manC (cons arse (cons manU (cons crysP (cons leiC nil ))))

--optional:field update functions
update: scores-> Nat-> scores
update (mkScores teams a b c d) e= mkScores teams e b c d






