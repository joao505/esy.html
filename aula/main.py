definir = input('qual tipo de calculo deseja: concentração comum, densidade:')
m1 = float(input(''))
m2 = float(input(''))
vol = float(input(''))

if definir == 'concentração comum':
    print(
        m1/vol
    )

elif definir == 'densidade':
    print(
        (m1 + m2)/vol
    )

else:(
    print('tu é muito burro ou oque?')
)
