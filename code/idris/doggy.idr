module dog
import bool

data dog= heidi|bonny|biggy
data owner= jae|tim
whosdog:dog->owner
whosdog bonny=tim
whosdog _=jae

