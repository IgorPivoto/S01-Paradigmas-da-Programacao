DIM distancia AS SINGLE
DIM combustivel AS SINGLE
DIM consumoMedio AS SINGLE

INPUT "Digite a distancia percorrida (em km): ", distancia
INPUT "Digite a quantidade de combustivel gasta (em litros): ", combustivel

consumoMedio = distancia / combustivel

PRINT "Consumo medio do veiculo: "; consumoMedio; " km/l"

END