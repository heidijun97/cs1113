module colors
import bool
import pair
%default total
data colors=red|green|blue|magenta|yellow|cyan
complement:colors->colors
complement red=cyan
complement cyan=red
complement blue=yellow
complement yellow=blue
complement green=magenta
complement magenta=green

additive:colors->bool
additive blue=true
additive red=true
additive green=true
additive _=false

subtractive:colors->bool
subtractive g=not (additive g)

complements: pair colors colors->bool
complements (mkPair red cyan)=true
complements (mkPair cyan red)=true
complements (mkPair blue yellow)=true
complements (mkPair yellow blue)=true
complements (mkPair green magenta)=true
complements (mkPair magenta green)=true
complements _=false


mixink: pair colors colors->colors
mixink (mkPair magenta yellow)=red
mixink (mkPair yellow cyan)=green
mixink (mkPair cyan magenta)=blue
mixink (mkPair yellow magenta)=red
mixink (mkPair cyan yellow) =green
mixink (mkPair magenta cyan)=blue
