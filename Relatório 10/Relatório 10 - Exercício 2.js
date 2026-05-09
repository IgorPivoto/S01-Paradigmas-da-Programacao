class Habilidade {
    usar() {
        throw new Error('Implementar usar()');
    }
}

class Smoke extends Habilidade {
    usar() {
        return 'Lançou uma smoke na área!';
    }
}

class Flash extends Habilidade {
    usar() {
        return 'Explodiu uma flash cegando os inimigos!';
    }
}

class Dash extends Habilidade {
    usar() {
        return 'Avançou rapidamente com um dash!';
    }
}

class Armadilha extends Habilidade {
    usar() {
        return 'Posicionou uma armadilha estratégica!';
    }
}


class Agente {
    constructor(nome, funcao, habilidade) {
        this.nome = nome;
        this.funcao = funcao;
        this.habilidade = habilidade;
    }

    entrarEmCombate() {
        console.log(`${this.nome} (${this.funcao}) -> ${this.habilidade.usar()}`);
    }
}

class Time {
    constructor(agentes = []) {
        this.agentes = agentes;
    }

    iniciarPartida() {
        this.agentes.forEach(a => {
            a.entrarEmCombate();
        });
    }

    listarControladores() {
        return this.agentes.filter(a => a.habilidade instanceof Smoke);
    }
}

const omen = new Agente('Omen', 'Controlador', new Smoke());
const skye = new Agente('Skye', 'Iniciador', new Flash());
const jett = new Agente('Jett', 'Duelista', new Dash());
const cypher = new Agente('Cypher', 'Sentinela', new Armadilha());

const time = new Time([omen, skye, jett, cypher]);

time.iniciarPartida();

console.log('\nControladores encontrados:');

time.listarControladores().forEach(c => {
    console.log(`- ${c.nome}`);
});