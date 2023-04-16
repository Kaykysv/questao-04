
e = ['SP', 'RJ', 'MG', 'ES', 'OUTROS']

faturamento = list()
for c in e:
    # Capturando e tratando os valores digitados:
    while True:
        try:
            v = float(input(f'Digite o faturamento mensal de {c}: '))
            if v < 0:
                print('\033[31mValor INVÁLIDO! Digite apenas valores maiores ou iguais a "0":\033[m')
            break
        except:
            print('\033[31mValor INVÁLIDO! Digite apenas valores reais!\033[m')

    # Armazenando os valores digitados na lista faturamento
    faturamento.append(v)

# Calculando o faturamento total da distribuidora:
faturamento_total = sum(faturamento)
print(f'\033[32mO faturamento total da Distribuidora foi: R$ {faturamento_total:.2f}'.replace('.', ','))

# Calculando e exibindo o percentual relativo de cada filial de cada estado:
cont = 0
for i in faturamento:
    cont += 1
    percentual = ((i / faturamento_total) * 100)
    print(f'O percentual de faturamento de {e[cont - 1]} é: {percentual:.2f} %')

sp = float(67.83643)
rj = float(36.67866)
mg = float(29.22988)
es = float(27.16548)
out = float(19.84953)
total = float(sp + rj + mg + es + out)
print(total)
psp = ((sp/total)*100)
prj = ((rj/total)*100)
pmg = ((mg/total)*100)
pes = ((es/total)*100)
pout = ((out/total)*100)

print('Porcentagem de SP {}'.format(psp))
print('Porcentagem de RJ {}'.format(prj))
print('Porcentagem de MG {}'.format(pmg))
print('Porcentagem de ES {}'.format(pes))
print('Porcentagem de OUT {}'.format(pout))
