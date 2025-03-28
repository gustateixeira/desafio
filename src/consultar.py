import pandas as pd
from sqlalchemy import create_engine
from sqlalchemy.exc import SQLAlchemyError


def consultar():
    try:
        engine = create_engine('mysql+mysqlconnector://admin:1234@localhost/empresas')
    except SQLAlchemyError as e:
        print('Erro ao conectar')

    query = 'SELECT * FROM rfb_estabelecimentos;'

    df = pd.read_sql(query,engine)

    tabela = df.to_csv(r'C:\Users\gusta\Documents\desafio_constru\data\estabelecimentos.csv', index=False)

    entrada =  pd.read_csv(r'C:\Users\gusta\Documents\desafio_constru\data\estabelecimentos.csv')

    estados = entrada['uf'].to_list()


    dicionario = {}

    for uf in estados:
        if uf not in dicionario:
            dicionario[uf] = 1
        else:
            dicionario[uf] = dicionario[uf] + 1
    return dicionario


if __name__ == '__main__':
    consultar()




