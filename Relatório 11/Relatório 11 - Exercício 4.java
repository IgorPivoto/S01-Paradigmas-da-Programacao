import java.util.ArrayList;

// Classe 
abstract class Monstro {
    private String nome;

    public Monstro(String nome) {
        this.nome = nome;
    }

    public String getNome() {
        return nome;
    }

    public abstract void virarPrato();
}

// Herança
class Lagosta extends Monstro {
    public Lagosta(String nome) {
        super(nome);
    }

    @Override
    public void virarPrato() {
        System.out.println("Senshi cozinha a " + getNome());
    }
}

class Cogumelo extends Monstro {
    public Cogumelo(String nome) {
        super(nome);
    }

    @Override
    public void virarPrato() {
        System.out.println("Refoga o " + getNome());
    }
}

// Composição
class Tempero {
    private String nome;
    private int quantidade;

    public Tempero(String nome, int quantidade) {
        this.nome = nome;
        this.quantidade = quantidade;
    }

    public String getNome() {
        return nome;
    }

    public int getQuantidade() {
        return quantidade;
    }
}

// Agregação
class Prato {
    private String nome;
    private Monstro monstro;
    private Tempero tempero;

    public Prato(String nome, Monstro monstro) {
        this.nome = nome;
        this.monstro = monstro;
        this.tempero = new Tempero("Sal", 2);
    }

    public void servir() {
        System.out.println("\nPrato: " + nome);
        monstro.virarPrato();
        System.out.println("Tempero usado: " + tempero.getNome() + " (" + tempero.getQuantidade() + " pitadas)");
    }
}

class main {
    public static void main(String[] args) {
        Lagosta lagosta = new Lagosta("Lagosta Pistolera");
        Cogumelo cogumelo = new Cogumelo("Cogumelo Neon");

        Prato pratoLagosta = new Prato("Lagosta ao Vapor", lagosta);
        Prato pratoCogumelo = new Prato("Refogado de Cogumelo", cogumelo);

        pratoLagosta.servir();
        pratoCogumelo.servir();

        ArrayList<Prato> cardapio = new ArrayList<>();
        cardapio.add(pratoLagosta);
        cardapio.add(pratoCogumelo);

        System.out.println("\n Cardápio completo da expedição");
        for (Prato prato : cardapio) {
            prato.servir();
        }
    }
}
