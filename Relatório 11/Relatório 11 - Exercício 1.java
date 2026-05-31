import java.util.ArrayList;

// Classe abstrata personagem, feita para reutilizarmos e sermos eficientes com meenos codigo
abstract class Personagem {
    private String nome;
    private int idade;

    public Personagem(String nome, int idade) {
        this.nome = nome;
        this.idade = idade;
    }

    public String getNome() {
        return nome;
    }

    public int getIdade() {
        return idade;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public abstract void apresentar();
}

// classe mago que é uma herança de personagem
class Mago extends Personagem {
    public Mago(String nome, int idade) {
        super(nome, idade);
    }

    @Override
    public void apresentar() {
        System.out.println("Sou " + getNome() + ", o mago.");
    }
}

// classe de composição.
class Divisao {
    private String nome;
    private String funcao;

    public Divisao(String nome, String funcao) {
        this.nome = nome;
        this.funcao = funcao;
    }

    public String getNome() {
        return nome;
    }

    public String getFuncao() {
        return funcao;
    }
}

class CasteloAnimado {
    private ArrayList<Divisao> divisoes;

    public CasteloAnimado(ArrayList<Divisao> divisoes) {
        this.divisoes = divisoes;
    }

    public void adicionarDivisao(Divisao divisao) {
        divisoes.add(divisao);
    }

    public void listarDivisoes() {
        System.out.println("Cômodos do Castelo");
        for (Divisao divisao : divisoes) {
            System.out.println(divisao.getNome() + " (" + divisao.getFuncao() + ")");
        }
    }
}

class main {
    public static void main(String[] args) {
        Mago howl = new Mago("Howl", 22);
        howl.apresentar();

        System.out.println();

        ArrayList<Divisao> comodos = new ArrayList<>();
        comodos.add(new Divisao("Quarto do Howl", "Descanso"));
        comodos.add(new Divisao("Laboratório", "Poções"));

        CasteloAnimado castelo = new CasteloAnimado(comodos);
        castelo.adicionarDivisao(new Divisao("Cozinha", "Preparo de refeições"));
        castelo.listarDivisoes();
    }
}
