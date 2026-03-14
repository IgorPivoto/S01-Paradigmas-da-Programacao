function somar(a, b)
    return a + b
end

function subtrair(a, b)
    return a - b
end

function multiplicar(a, b)
    return a * b
end

function dividir(a, b)
    if b == 0 then
        return "Erro: divisao por zero."
    end
    return a / b
end

function calculadora(a, b, operador)
    if operador == "+" then
        return somar(a, b)
    elseif operador == "-" then
        return subtrair(a, b)
    elseif operador == "*" then
        return multiplicar(a, b)
    elseif operador == "/" then
        return dividir(a, b)
    else
        return "Erro: operador invalido."
    end
end

io.write("Digite o primeiro numero: ")
local n1 = tonumber(io.read())

io.write("Digite o segundo numero: ")
local n2 = tonumber(io.read())

io.write("Digite o operador (+, -, *, /): ")
local op = io.read()

local resultado = calculadora(n1, n2, op)
print("Resultado: " .. tostring(resultado))