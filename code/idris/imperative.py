
# comments: In Python a sinhle-line comment starts with the pound sign

''' Multiline comments are surrounded by triple single quotes or triple double quotes.'''

# differences

'''key differences, Idris vs python

1 idris is a compiled language; python is interpreted (by default)
2 idris uses sttic type checking; python uses dynamic type checking
3 idris values are immutable whereas pytho has mutable state
4 idris is a language of expressions; python is a language of commands
'''

# compiled vs dynamic type checking

''' in idris, every value has two types: a "static" type, as seen by the compiler and a "dynamic"type, as seen when the porgram actually runs. The static type of every value in Python is simply "object." The upshot is that static type checking isn't helpful in python, and so it is not done. You can write, compile, and run coded that passes a string to a function expecting a umber, and it issues a runtime type error. 
'''

# type checking demo

def foo(n):
    return n + 3

#print(foo("Hello!"))
# this is a type error but because python is a dynamic type it doesnt
# check until you run it so the error will show when you run it


print(foo(6))

# print is a procedure that affects the world by printing on console
print(print("Happy 200th Birthday, George Boole!"))

#None --sesrvese same purposes as both option.none and unit.mkUnit
print()
