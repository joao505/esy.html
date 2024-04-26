var1 = str(input("qual a operação desejada: "))
soma = "soma"
sub = "sub"
div = "div"
mul = "mul"


N1 = float(input(" "))

N2 = float(input(" "))

if var1 ==  "soma":
    resultado = N1 + N2
    print(resultado)
    
elif var1 == "sub":
    resultado = N1 - N2
    print(resultado)

elif var1 == "div":
    resultado = N1 / N2
    print(resultado)

elif var1 == "mul":
    resultado = N1 * N2
    print(resultado)

else :
    ("resultado não encontrado")
