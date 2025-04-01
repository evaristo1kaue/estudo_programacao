def obter_numero(mensagem):
    """Obtém um número inteiro do usuário com tratamento de erros."""
    while True:
        try:
            return int(input(mensagem))
        except ValueError:
            print("Entrada inválida. Digite um número inteiro.")


def calcular(operacao, num1, num2):
    """Realiza o cálculo com base na operação escolhida."""
    if operacao == "soma":
        return num1 + num2
    elif operacao == "subtração":
        return num1 - num2
    elif operacao == "divisão":
        if num2 == 0:
            print("Erro: Divisão por zero!")
            return None  # Retorna None para indicar um erro
        return num1 / num2
    elif operacao == "multiplicação":
        return num1 * num2
    else:
        return None  # Retorna None para indicar uma operação inválida


def main():
    """Função principal que controla o fluxo da calculadora."""
    while True:
        print("-----------------------Calculadora de 2 números-----------------------")
        print("Opções: soma, subtração, divisão, multiplicação")
        print("Para sair digite 'sair'")
        print("---------------------------------------------------------------------")

        operacao = input("Operação: ").lower()

        if operacao == "sair":
            break

        if operacao not in ["soma", "subtração", "divisão", "multiplicação"]:
            print("Operação inválida.")
            continue

        num1 = obter_numero("Primeiro número: ")
        num2 = obter_numero("Segundo número: ")

        resultado = calcular(operacao, num1, num2)

        if resultado is not None:  # Verifica se houve erro no cálculo
            print(f"Resultado: {resultado}")
        print("---------------------------------------------------------------------")


if __name__ == "__main__":
    main()