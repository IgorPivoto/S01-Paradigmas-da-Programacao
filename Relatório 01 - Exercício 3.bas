DIM valorReais AS SINGLE
DIM valorDolares AS SINGLE
DIM valorEuros AS SINGLE
DIM taxaDolar AS SINGLE
DIM taxaEuro AS SINGLE

taxaDolar = 5.00
taxaEuro = 5.40

INPUT "Digite o valor em reais (R$): ", valorReais

valorDolares = valorReais / taxaDolar
valorEuros = valorReais / taxaEuro

PRINT "Valor em reais: R$ "; valorReais
PRINT "Valor convertido em dolares: US$ "; valorDolares
PRINT "Valor convertido em euros: EUR "; valorEuros

END