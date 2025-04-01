while True:
    print("---------Calculadora de IMC---------")
    print("Para sair digite 'sair'")
    print("------------------------------------")
    try:
        peso = input("Digite seu peso (em kg): ")
        if peso.lower() == "sair":
            break
        peso = float(peso)

        altura = input("Digite sua altura (em metros): ")
        if altura.lower() == "sair":
            break
        altura = float(altura)

        if altura <= 0 or peso <= 0:
            print("Peso e altura devem ser maiores que zero.")
            continue

        imc = peso / (altura ** 2)

        print("------------------------------------")
        if imc < 18.5:
            print("Classificação: Abaixo do peso")
        elif imc < 25:
            print("Classificação: Peso normal")
        elif imc < 30:
            print("Classificação: Sobrepeso")
        elif imc < 35:
            print("Classificação: Obesidade grau 1")
        elif imc < 40:
            print("Classificação: Obesidade grau 2")
        else:
            print("Classificação: Obesidade grau 3")

        print(f"Seu IMC é: {imc:.2f}")
        print("------------------------------------")

    except ValueError:
        print("Entrada inválida. Digite um número válido.")