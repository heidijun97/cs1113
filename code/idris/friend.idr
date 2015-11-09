module friend
import bool
||| a friend is someone who is or isnt trustworth
||| a name

data friend= mkFriend bool String Nat

f1: friend
f1= mkFriend true "Alice" 18

f2:friend
f2= mkFriend true "Stella" 19

getAge:friend->Nat
getAge (mkFriend b s n)=n

getName:friend-> String
getName (mkFriend b s n)=s

getTrust:friend-> bool
getTrust (mkFriend b s n)=b
