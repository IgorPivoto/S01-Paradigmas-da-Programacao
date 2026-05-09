class Pokemon {
    #vida;

    constructor(nome, tipo, vida) {
        this.nome = nome;
        this.tipo = tipo;
        this.#vida = vida;
    }

    get vida() {
        return this.#vida;
    }

    atacar() {
        console.log(`${this.nome} realizou um ataque genérico!`);
    }

    receber_dano(dano) {
        this.#vida -= dano;

        if (this.#vida < 0) {
            this.#vida = 0;
        }
    }
}


class Pikachu extends Pokemon {
    constructor() {
        super('Pikachu', 'Elétrico', 100);
    }

    atacar() {
        console.log(`${this.nome} usou Choque do Trovão!`);
    }
}

class Charizard extends Pokemon {
    constructor() {
        super('Charizard', 'Fogo', 150);
    }

    atacar() {
        console.log(`${this.nome} lançou um lança-chamas!`);
    }
}

const pikachu = new Pikachu();
const charizard = new Charizard();

pikachu.atacar();
charizard.atacar();

charizard.receber_dano(40);

console.log(`Vida restante de ${charizard.nome}: ${charizard.vida}`);