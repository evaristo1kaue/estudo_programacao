def celsius_para_fahrenheit(celsius):
    """Converte Celsius para Fahrenheit."""
    return celsius * 1.8 + 32


def celsius_para_kelvin(celsius):
    """Converte Celsius para Kelvin."""
    return celsius + 273.15


def fahrenheit_para_celsius(fahrenheit):
    """Converte Fahrenheit para Celsius."""
    return (fahrenheit - 32) / 1.8


def fahrenheit_para_kelvin(fahrenheit):
    """Converte Fahrenheit para Kelvin."""
    return (fahrenheit - 32) * 5 / 9 + 273.15


def kelvin_para_celsius(kelvin):
    """Converte Kelvin para Celsius."""
    return kelvin - 273.15


def kelvin_para_fahrenheit(kelvin):
    """Converte Kelvin para Fahrenheit."""
    return (kelvin - 273.15) * 9 / 5 + 32


def obter_temperatura(mensagem):
    """Obtém a temperatura do usuário com tratamento de erros."""
    while True:
        try:
            return float(input(mensagem))
        except ValueError:
            print("Entrada inválida. Digite um número.")


def main():
    """Função principal que controla o fluxo do conversor de temperatura."""
    while True:
        print("----------------Conversor de Temperatura----------------")
        print("Escolha a temperatura que deseja converter:")
        print("1. Celsius")
        print("2. Fahrenheit")
        print("3. Kelvin")
        print("Para sair digite 'sair'")
        print("--------------------------------------------------------")

        escolha = input("Escolha: ")

        if escolha.lower() == "sair":
            break

        try:
            escolha = int(escolha)
        except ValueError:
            print("Escolha inválida. Digite um número entre 1 e 3 ou 'sair'.")
            continue

        if escolha == 1:  # Celsius
            celsius = obter_temperatura("Digite a temperatura em graus Celsius: ")
            fahrenheit = celsius_para_fahrenheit(celsius)
            kelvin = celsius_para_kelvin(celsius)
            print(f"Temperatura em Fahrenheit: {fahrenheit:.2f}")
            print(f"Temperatura em Kelvin: {kelvin:.2f}")

        elif escolha == 2:  # Fahrenheit
            fahrenheit = obter_temperatura("Digite a temperatura em graus Fahrenheit: ")
            celsius = fahrenheit_para_celsius(fahrenheit)
            kelvin = fahrenheit_para_kelvin(fahrenheit)
            print(f"Temperatura em Celsius: {celsius:.2f}")
            print(f"Temperatura em Kelvin: {kelvin:.2f}")

        elif escolha == 3:  # Kelvin
            kelvin = obter_temperatura("Digite a temperatura em graus Kelvin: ")
            celsius = kelvin_para_celsius(kelvin)
            fahrenheit = kelvin_para_fahrenheit(kelvin)
            print(f"Temperatura em Celsius: {celsius:.2f}")
            print(f"Temperatura em Fahrenheit: {fahrenheit:.2f}")

        else:
            print("Escolha inválida. Digite um número entre 1 e 3 ou 'sair'.")
        print("--------------------------------------------------------")


if __name__ == "__main__":
    main()