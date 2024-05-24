import math

numero = str(input("formula: soma, div, sub, mul, pont, raiz:"))
n1 = int(input(""))
n2 = int(input(""))

if numero == 'soma':
    print(n1 + n2)

elif numero == 'div':
    print(n1/n2)

elif numero == 'sub':
    print(n1 - n2)

elif numero == 'mul':
    print(n1 * n2)

elif numero == 'pont':
    print(n1 ** n2)

elif numero == 'raiz':
    raiz = math.sqrt(n1)
    print(raiz)

else:(
    print("invalido!!!")
)