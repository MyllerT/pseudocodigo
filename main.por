programa {
  caracter vetorClientes[10]
  caracter vetorDestinos[10]
  real contadorClientes = 0
  real contadorDestinos = 0

  funcao inicio() {
    inteiro opcao = 0

    enquanto (opcao != 4) {
      escreva (" 1 - Adicionar cliente")
      escreva (" 2 - Adicionar destino")
      escreva (" 3 - Mostrar clientes e destinos")
      escreva (" 4 - Sair do programa")
      escreva ("Escolha uma opção:")
      leia (opcao)

      se (opcao == 1) {
        se (contadorClientes < 10) {
          escreva ("Digite o nome do cliente:")
          leia (vetorClientes[contadorClientes])
          contadorClientes = contadorClientes + 1
        } senao {
          escreva ("Limite de clientes atingido.")
        }
      } senao se (opcao == 2) {
        se (contadorDestinos < 10) {
          escreva ("Digite o nome do destino:")
          leia (vetorDestinos[contadorDestinos])
          contadorDestinos = contadorDestinos + 1
        } senao {
          escreva ("Limite de destinos atingido.")
        }
      } senao se (opcao == 3) {
        mostrarClientesEDestinos()
      } senao se (opcao == 4) {
        escreva ("Saindo do programa...")
      } senao {
        escreva ("Opção inválida!")
      }
    }
  }

  funcao mostrarClientesEDestinos() {
    escreva ("Clientes cadastrados:")
    para (inteiro i = 0; i < contadorClientes; i = i + 1) {
      escreva (" - ")
      escreva (vetorClientes[i])
    }
    escreva ("\nDestinos cadastrados:")
    para (inteiro i = 0; i < contadorDestinos; i = i + 1) {
      escreva (" - ")
      escreva (vetorDestinos[i])
    }
    escreva ("\n")
  }
}

