num1 = 0
num2 = 0
resultado = 0
numsaida = 1  # Inicializa com um valor diferente de 0 para entrar no loop

while True:  # Loop infinito (simulando o "do")
    print("-----------------------Calculadora de 2 números-----------------------")
    print("Opções são soma, subtração, divisão e multiplicação")
    print("Para sair digite 0 ou 'sair'")
    print("---------------------------------------------------------------------")
    operaçãodesejada = input("Operação: ")

    if operaçãodesejada.lower() == "sair":
        break

    if operaçãodesejada not in ["soma", "subtração", "divisão", "multiplicação"]:
        print("Operação inválida")
        continue

    try:
        num1 = int(input("Primeiro número: "))
        num2 = int(input("Segundo número: "))
    except ValueError:
        print("Entrada inválida. Digite números inteiros.")
        continue

    if operaçãodesejada == "soma":
        resultado = num1 + num2
    elif operaçãodesejada == "subtração":
        resultado = num1 - num2
    elif operaçãodesejada == "divisão":
        if num2 == 0:
            print("Erro: Divisão por zero!")
            continue
        resultado = num1 / num2
    elif operaçãodesejada == "multiplicação":
        resultado = num1 * num2

    print("Resultado:", resultado)

    try:
        numsaida = int(input("Digite 0 para sair ou qualquer outro número para continuar: "))
    except ValueError:
        print("Entrada inválida. Digite um número inteiro.")
        numsaida = 1 # Define um valor diferente de 0 para continuar o loop

    if numsaida == 0:
        break  # Sai do loop se o usuário digitar 0