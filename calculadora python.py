num1 = 0
num2 = 0
resultado = 0

print("-----------------------Calculadora de 2 números-----------------------")
print("Opções são soma, subtração, divisão e multiplicação")
print("---------------------------------------------------------------------")
operaçãodesejada = input("Operação: ")
num1 = int(input("Primeiro número: "))
num2 = int(input("Segundo número: "))

if operaçãodesejada == "soma":
    resultado = num1 + num2
    print(resultado)
elif operaçãodesejada == "subtração":
    resultado = num1 - num2
    print(resultado)
elif operaçãodesejada == "divisão":
    resultado = num1 / num2
    print(resultado)
elif operaçãodesejada == "multiplicação":
    resultado = num1 * num2
    print(resultado)
else:
    print("Operação inválida")