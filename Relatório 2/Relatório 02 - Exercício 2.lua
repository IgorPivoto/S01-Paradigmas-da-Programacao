function maiorValor(tabela)
    local maior = tabela[1]
    for i = 2, #tabela do
        if tabela[i] > maior then
            maior = tabela[i]
        end
    end
    return maior
end

io.write("Quantos valores deseja inserir? ")
local n = tonumber(io.read())

local tabela = {}
for i = 1, n do
    io.write("Digite o valor " .. i .. ": ")
    tabela[i] = tonumber(io.read())
end

print("Maior valor: " .. maiorValor(tabela))
