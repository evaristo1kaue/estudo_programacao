while True:
    print("------------Tabuada------------")
    print("Para sair digite 'sair'")
    try:
        num = input("Digite um número: ")
        if num.lower() == "sair":
            break
        num = float(num)
        
        while True:
            try:
                limite = input("Digite até qual número deseja a tabuada: ")
                if limite.lower() == "sair":
                    break
                limite = int(limite)
                break
            except ValueError:
                print("Entrada inválida. Digite um número inteiro.")
        if limite == "sair":
            break
        print("-------------------------------")
        for i in range(1, limite + 1):
            print(f"{num:.2f} x {i} = {num * i:.2f}")
        print("-------------------------------")

    except ValueError:
        print("Entrada inválida. Digite um número.")