import pandas as pd
from sqlalchemy import create_engine
from sqlalchemy.exc import SQLAlchemyError


def consultar():

    # faz a consulta ao banco de dados em um try-catch para demonstrar que pode haver erro
    try:
        engine = create_engine('mysql+mysqlconnector://admin:1234@localhost/empresas')
    except SQLAlchemyError as e:
        print('Erro ao conectar')

    #faz a consulta ao db
    query = 'SELECT * FROM rfb_estabelecimentos;'

    df = pd.read_sql(query,engine)

    tabela = df.to_csv(r'C:\Users\gusta\Documents\desafio_constru\data\estabelecimentos.csv', index=False)

    entrada =  pd.read_csv(r'C:\Users\gusta\Documents\desafio_constru\data\estabelecimentos.csv')

    estados = entrada['uf'].to_list()


    dicionario = {}

    #coloca as ufs existentes, num dicionário com CHAVES = UF , VALORES = CONTAGEM DE UFS

    for uf in estados:
        if uf not in dicionario:
            dicionario[uf] = 1
        else:
            dicionario[uf] = dicionario[uf] + 1
    return dicionario


if __name__ == '__main__':
    consultar()




