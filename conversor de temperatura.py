print("----------------Conversor de Temperatura----------------")
print("Qual temperatura que deseja converter? 1. Celsius, 2. Fahrenheit ou 3. Kelvin")
print("--------------------------------------------------------")

escolha = int(input("Escolha: "))

if escolha == 1: # Celsius
    c = float(input("Digite a temperatura em graus Celsius: "))
    f = c * 1.8 + 32
    k = c + 273
    print("Temperatura em Fahrenheit:", f)
    print("Temperatura em Kelvin:", k)

elif escolha == 2: # Fahrenheit
    f = float(input("Digite a temperatura em graus Fahrenheit: "))
    c = (f-32)/1.8
    k = (f-32)*5/9 + 273
    print("Temperatura em Celsius:", c)
    print("Temperatura em Kelvin:", k)

elif escolha == 3: # Kelvin
    k = float(input("Digite a temperatura em graus Kelvin: "))
    c = k - 273.15
    f = (k - 273.15) * 9/5 + 32
    print("Temperatura em Celsius:", c)
    print("Temperatura em Fahrenheit:", f)

else:
    print("Escolha inválida")
