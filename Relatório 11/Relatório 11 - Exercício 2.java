import java.util.ArrayList;

// Usei de inspiração um codigo muito parecido de poo
// Classe base
class Cafe {
    private String nome;
    private double preco;

    public Cafe(String nome, double preco) {
        this.nome = nome;
        this.preco = preco;
    }

    public String getNome() {
        return nome;
    }

    public double getPreco() {
        return preco;
    }

    public double calcularPrecoFinal() {
        return preco;
    }
}

// Herança 
class CafeGourmet extends Cafe {
    private double bonusAroma;

    public CafeGourmet(String nome, double preco, double bonusAroma) {
        super(nome, preco);
        this.bonusAroma = bonusAroma;
    }

    @Override
    public double calcularPrecoFinal() {
        return getPreco() + bonusAroma;
    }
}

// Composição
class Menu {
    private ArrayList<Cafe> cafes;

    public Menu() {
        this.cafes = new ArrayList<>();
    }

    public void adicionarCafe(Cafe cafe) {
        cafes.add(cafe);
    }

    public void exibirMenu() {
        System.out.println("Cardápio");
        for (Cafe cafe : cafes) {
            System.out.printf("%s - R$ %.2f%n", cafe.getNome(), cafe.calcularPrecoFinal());
        }
    }
}

// Composição
class CafeteriaLeblanc {
    private Menu menu;

    public CafeteriaLeblanc() {
        this.menu = new Menu();
    }

    public void adicionarCafe(Cafe cafe) {
        menu.adicionarCafe(cafe);
    }

    public void abrirCafeteria() {
        System.out.println("Bem-vindo ao Leblanc!");
        menu.exibirMenu();
    }
}

class main {
    public static void main(String[] args) {
        Cafe simples = new Cafe("Café Coado", 5.00);
        Cafe expresso = new Cafe("Expresso", 7.50);
        CafeGourmet gourmet = new CafeGourmet("Café gourmet", 12.00, 4.50);

        CafeteriaLeblanc leblanc = new CafeteriaLeblanc();
        leblanc.adicionarCafe(simples);
        leblanc.adicionarCafe(expresso);
        leblanc.adicionarCafe(gourmet);

        leblanc.abrirCafeteria();
    }
}
