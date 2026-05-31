Igor Silva Pivoto 
GES 767

Acabou que não utilizei a ia para criar os codigos, já que eu tinha muitas partes de codigo aqui de poo 

Prompt usado:
Leia meus 4 codigos do relatório 11, e veja se estao escritos corretamente, alem de ver se tem sentido com o enunciado

A IA me retornou um relatorio dizendo que esta tudo ok, eles seguiam esse padrão:

Exercício 1 — Castelo Animado ✅
Bate com o enunciado item por item:

[Personagem](Relatório 11/Relatório 11 - Exercício 1.java#L4) abstrata com nome/idade privados, getters dos dois, setter só de nome, e apresentar() abstrato ✓
[Mago](Relatório 11/Relatório 11 - Exercício 1.java#L29) herda, chama super e sobrescreve apresentar ✓
[Divisao](Relatório 11/Relatório 11 - Exercício 1.java#L41) é um molde simples ✓
[CasteloAnimado](Relatório 11/Relatório 11 - Exercício 1.java#L59) recebe o ArrayList pronto no construtor (agregação), tem adicionarDivisao e listarDivisoes com for-each ✓
main instancia Howl, chama apresentar, cria as divisões e lista ✓

Exercício 2 — Cafeteria Leblanc ✅
[Cafe](Relatório 11/Relatório 11 - Exercício 2.java#L5) base, getters, calcularPrecoFinal retornando o preço ✓
[CafeGourmet](Relatório 11/Relatório 11 - Exercício 2.java#L28) com bonusAroma, super, @Override somando o bônus ✓
[Menu](Relatório 11/Relatório 11 - Exercício 2.java#L43) instancia o ArrayList internamente (composição) ✓
[CafeteriaLeblanc](Relatório 11/Relatório 11 - Exercício 2.java#L63) instancia o Menu internamente, abrirCafeteria dá boas-vindas e chama exibirMenu ✓
main cria 3 cafés (um gourmet), adiciona via cafeteria e abre ✓
Exercício 3 — Registro Oculto ✅
[Rastreavel](Relatório 11/Relatório 11 - Exercício 3.java#L4), [Poder](Relatório 11/Relatório 11 - Exercício 3.java#L9), [Entidade](Relatório 11/Relatório 11 - Exercício 3.java#L28) base ✓
Alien e Youkai herdam de Entidade, implementam Rastreavel, instanciam Poder no construtor e sobrescrevem obterCoordenadas ✓
[RegistroOculto](Relatório 11/Relatório 11 - Exercício 3.java#L72) usa o nome como chave e bloqueia duplicata com containsKey ✓
main registra 2 Aliens + 2 Youkais, tenta registrar o alien1 de novo (demonstra o bloqueio) e lista ✓
Detalhe: o cast (Rastreavel) entidade na [linha 91](Relatório 11/Relatório 11 - Exercício 3.java#L91) funciona porque toda entidade registrada implementa a interface. Está ok para o exercício.

Exercício 4 — Pratos da Masmorra ✅
[Monstro](Relatório 11/Relatório 11 - Exercício 4.java#L4) abstrata com virarPrato abstrato ✓
Lagosta e Cogumelo sobrescrevem virarPrato ✓
[Tempero](Relatório 11/Relatório 11 - Exercício 4.java#L42) como componente ✓
[Prato](Relatório 11/Relatório 11 - Exercício 4.java#L61) recebe o Monstro pronto (agregação) e instancia Tempero interno (composição); servir mostra nome, chama virarPrato e exibe o tempero ✓
main cria os dois pratos, chama servir, monta o ArrayList<Prato> e percorre com for-each ✓

A satisfação foi boa, pois deu para ver que estava tudo certo