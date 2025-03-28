import matplotlib.pyplot as plt
from consultar import consultar

def main():
    #chama a função de consultar que está no outro arquivo py
    dados = consultar()

    #cria um gráfico de barras, com o eixo X = ufs  e o eixo Y = contagem de ufs
    plt.bar(dados.keys(), dados.values(),color='red') # barras na cor vermelha

    #título do gráfico
    plt.title('Empresas por estado')
   
    #nome para o eixo X
    plt.xlabel('Estados')

    #nome para o eixo Y
    plt.ylabel('Nº de estabelecimentos')

    #mostra na tela o gráfico
    plt.show()


if __name__ == '__main__':
    main()