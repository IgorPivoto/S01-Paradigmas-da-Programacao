Igor Silva Pivoto 
GES 767

Acabou que não utilizei a ia para criar os codigos, já que eu tinha muitas partes de codigo aqui de poo 

Prompt usado:
Leia meus 4 codigos do relatório 11, e veja se estao escritos corretamente, alem de ver se tem sentido com o enunciado

A IA me retornou um relatorio dizendo que esta tudo ok, eles seguiam esse padrão:

✅ Exercício 1 — Café Leblanc
Enunciado	Status
Bebida com nome, tipo, preco	✅
StatusPedido = Aberto | Entregue | Cancelado	✅
Pedido com lista de bebidas + StatusPedido	✅
valorTotalPedido com guards (0.0 se Cancelado, senão soma)	✅
primeiraBebida com pattern matching ([] e (b:_))	✅
main: 2 pedidos (Entregue + Cancelado)	✅
Saída: Pedido 1 = R$ 14.5 / Pedido 2 = R$ 0.0.

✅ Exercício 2 — Lojas de Hyrule
Enunciado	Status
Item com nome, categoria, preco	✅
Compra + StatusCompra (Pendente/Concluida/Cancelada)	✅
totalItens com map e sum	✅
valorFinal com guards (0.0 cancelada, 10% se >200, senão total)	✅
main: compra com 3 itens	✅
Total = 255 → cai no caso >200 → R$ 229.5. ✔ demonstra o desconto.

✅ Exercício 3 — Casa de Shows
Enunciado	Status
Banda com nome, genero, cache	✅
StatusEvento (Ativo/Encerrado/Cancelado)	✅
custoTotalEvento guards (0.0 cancelado, senão soma + 20% → * 1.2)	✅
bandaAbertura (primeiro) e bandaEncerramento (com last)	✅
main: 3 eventos (Ativo/Encerrado/Cancelado)	✅
✅ Exercício 4 — Casa de Banhos da Yubaba
Enunciado	Status
Servico com nome, tipo, preco	✅
StatusAtendimento (EmAndamento/Finalizado/Cancelado)	✅
totalServicos com map e sum	✅
valorFinalAtendimento guards (0.0 cancelado, +25% se >3, senão total)	✅
primeiroServico com pattern matching	✅
main: 2 atendimentos	✅
Atendimento 1 tem 4 serviços → aplica os 25% (250 → R$ 312.5); Atendimento 2 tem 2 → total simples. ✔ demonstra os dois ramos.

Pontos gerais (corretude da linguagem)
Todos os tipos Status* têm deriving (Eq, Show) — necessário para o == nos guards e o show. ✅
Não há conflito de nomes de campos de record dentro de cada arquivo. ✅
Cada arquivo tem sua main. ✅
A indentação está correta (sem o erro de layout que havia antes). ✅

A satisfação foi boa, pois estava tudo certo