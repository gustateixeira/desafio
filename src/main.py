import matplotlib.pyplot as plt
from consultar import consultar

dados = consultar()

plt.bar(dados.keys(), dados.values(),color='red')

plt.title('Empresas por estado')
plt.xlabel('Estados')
plt.ylabel('Nº de estabelecimentos')

plt.show()