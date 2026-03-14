print("Digite o valor m:")
m = io.read("*n")
print("Digite o valor n:")
n = io.read("*n")
print("Digite o valor para a tabuada:")
x = io.read("*n")

for i = m, n do
    print(x, " x ", i, " = ", (x*i))
end