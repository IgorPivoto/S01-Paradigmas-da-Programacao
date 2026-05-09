class Criatura {
    constructor(nome, perigo) {
        this.nome = nome;
        this.perigo = perigo;
    }
}

class Diario {
    constructor() {
        this.criaturas = [];
    }

    registrarCriatura(criatura) {
        this.criaturas.push(criatura);
    }

    listarCriaturas() {
        this.criaturas.forEach(c => {
            console.log(`${c.nome} | Perigo: ${c.perigo}`);
        });
    }
}

class Personagem {
    constructor(nome) {
        this.nome = nome;
    }
}

class CabanaMisterio {
    constructor(personagens = []) {
        this.personagens = personagens;
    }

    listarFuncionarios() {
        this.personagens.forEach(p => {
            console.log(`- ${p.nome}`);
        });
    }
}

const diario3 = new Diario();

const criatura1 = new Criatura('Bill Cipher', 'Extremo');
const criatura2 = new Criatura('Gnomos', 'Médio');
const criatura3 = new Criatura('Shapeshifter', 'Alto');

diario3.registrarCriatura(criatura1);
diario3.registrarCriatura(criatura2);
diario3.registrarCriatura(criatura3);

diario3.listarCriaturas();

const stan = new Personagem('Grunkle Stan');
const mabel = new Personagem('Mabel');
const soos = new Personagem('Soos');

const cabana = new CabanaMisterio([stan, mabel, soos]);

cabana.listarFuncionarios();