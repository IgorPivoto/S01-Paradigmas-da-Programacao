DIM senhaCorreta AS INTEGER
DIM senhaDigitada AS INTEGER

senhaCorreta = 1234

DO
    INPUT "Digite a senha: ", senhaDigitada
    
    IF senhaDigitada = senhaCorreta THEN
        PRINT "Acesso liberado!"
        EXIT DO
    ELSE
        PRINT "Senha incorreta. Tente novamente."
    END IF
LOOP

END