celsius = 0
fahrenheit = 0
kelvin = 0

print("----------------Conversor de Temperatura----------------")
print("Qual temperatura que deseja converter? Celsius, Fahrenheit ou Kelvin")
print("--------------------------------------------------------")

escolha = str(input("Escolha: "))
if celsius:
    celsius = float(input("Digite a temperatura em graus Celsius: "))
    celsius = (fahrenheit - 32) * 5/9
    celsius = (kelvin - 273.15)
    print("Temperatura em Fahrenheit:", fahrenheit)
    print("Temperatura em Kelvin:", kelvin)

elif escolha == fahrenheit:
    fahrenheit = float(input("Digite a temperatura em graus Fahrenheit: "))
    fahrenheit = (celsius * 9/5) + 32
    fahrenheit = (kelvin - 273.15) * 9/5 + 32
    print("Temperatura em Celsius:", celsius)
    print("Temperatura em Kelvin:", kelvin)

elif escolha == kelvin:
    kelvin = float(input("Digite a temperatura em graus Kelvin: "))
    kelvin = (celsius + 273.15)
    kelvin = (fahrenheit - 32) * 5/9 + 273.15
    print("Temperatura em Celsius:", celsius)
    print("Temperatura em Fahrenheit:", fahrenheit)

else:
    print("Escolha inválida")
