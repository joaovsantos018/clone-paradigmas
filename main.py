
import psycopg2
import pandas as pd
def conectar_banco():
    conexao = psycopg2.connect(
        database="ProgramPython",
        host="localhost",
        user="postgres",
        password="postgres",
        port="5432"
    )
    return conexao
def obter_dieta(tipo_dieta):
    conexao = conectar_banco()
    if conexao:
        tabela = None
        if tipo_dieta == 1:
            print("Selecionando a Dieta para emagrecer")
            tabela = 'emagrecer'
        elif tipo_dieta == 2:
            print("Selecionando a Dieta para ganho de massa")
            tabela = 'ganho_massa'
        elif tipo_dieta == 3:
            tabela = 'saudavel'
            print("Selecionando a Dieta saudavel")
        else:
            print("Opção Inválida!")
        if tabela:
            dieta = pd.read_sql(f'SELECT * FROM {tabela}', conexao)
            print(dieta)
        conexao.close()
if __name__ == "__main__":
    print('Escolha qual o tipo de dieta você gostaria de obter:')
    print('1. Dieta para emagrecer \n'
          '2. Dieta para ganho de massa \n'
          '3. Dieta para se alimentar melhor')
    n_dieta = input()
    try:
        n_dieta = int(n_dieta)
        obter_dieta(n_dieta)
    except ValueError:
        print("Opção Inválida! Digite um número válido.")