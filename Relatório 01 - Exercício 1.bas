DIM nota1 AS SINGLE
DIM nota2 AS SINGLE
DIM nota3 AS SINGLE
DIM peso1 AS SINGLE
DIM peso2 AS SINGLE
DIM peso3 AS SINGLE
DIM mediaPonderada AS SINGLE
DIM somaPesos AS SINGLE

PRINT "Digite as tres notas:"
INPUT "Nota 1: ", nota1
INPUT "Nota 2: ", nota2
INPUT "Nota 3: ", nota3

PRINT "Digite os pesos correspondentes:"
INPUT "Peso 1: ", peso1
INPUT "Peso 2: ", peso2
INPUT "Peso 3: ", peso3

somaPesos = peso1 + peso2 + peso3
mediaPonderada = (nota1 * peso1 + nota2 * peso2 + nota3 * peso3) / somaPesos

PRINT "Media Ponderada: "; mediaPonderada

IF mediaPonderada >= 70 THEN
    PRINT "Status: Aprovado direto"
ELSE
    PRINT "Status: Reprovado direto"
END IF