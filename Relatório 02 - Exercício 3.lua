function filtrarImpares(tabela)
    local impares = {}
    for i = 1, #tabela do
        if tabela[i] % 2 ~= 0 then
            impares[#impares + 1] = tabela[i]
        end
    end
    return impares
end

io.write("Quantos valores deseja inserir? ")
local n = tonumber(io.read())

local tabela = {}
for i = 1, n do
    io.write("Digite o valor " .. i .. ": ")
    tabela[i] = tonumber(io.read())
end

local impares = filtrarImpares(tabela)

print("Números ímpares encontrados:")
for i = 1, #impares do
    print(impares[i])
end