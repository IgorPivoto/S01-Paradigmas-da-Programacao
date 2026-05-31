import java.util.HashMap;

// Interface
interface Rastreavel {
    String obterCoordenadas();
}

// Composição
class Poder {
    private String nome;
    private int intensidade;

    public Poder(String nome, int intensidade) {
        this.nome = nome;
        this.intensidade = intensidade;
    }

    public String getNome() {
        return nome;
    }

    public int getIntensidade() {
        return intensidade;
    }
}

// Classe 
class Entidade {
    private String nome;

    public Entidade(String nome) {
        this.nome = nome;
    }

    public String getNome() {
        return nome;
    }
}

// Herança + interface
class Alien extends Entidade implements Rastreavel {
    private Poder poder;

    public Alien(String nome) {
        super(nome);
        this.poder = new Poder("Telepatia", 80);
    }

    @Override
    public String obterCoordenadas() {
        return "Coordenadas (La -22.9, Lo -43.1), Poder: "
                + poder.getNome() + " (" + poder.getIntensidade() + ")";
    }
}

class Youkai extends Entidade implements Rastreavel {
    private Poder poder;

    public Youkai(String nome) {
        super(nome);
        this.poder = new Poder("Ilusão", 65);
    }

    @Override
    public String obterCoordenadas() {
        return "Floresta (setor 7), Poder: "
                + poder.getNome() + " (" + poder.getIntensidade() + ")";
    }
}

// Agregação com HashMap
class RegistroOculto {
    private HashMap<String, Entidade> registro;

    public RegistroOculto() {
        this.registro = new HashMap<>();
    }

    public void registrarEntidade(Entidade entidade) {
        if (registro.containsKey(entidade.getNome())) {
            System.out.println("AVISO: " + entidade.getNome() + " já está registrada. Ignorando duplicata.");
            return;
        }
        registro.put(entidade.getNome(), entidade);
        System.out.println(entidade.getNome() + " registrada com sucesso.");
    }

    public void listarEntidades() {
        System.out.println("\n Entidades Registradas");
        for (Entidade entidade : registro.values()) {
            Rastreavel rastreavel = (Rastreavel) entidade;
            System.out.println(entidade.getNome() + " -> " + rastreavel.obterCoordenadas());
        }
    }
}

class main {
    public static void main(String[] args) {
        Alien alien1 = new Alien("Zorblax");
        Alien alien2 = new Alien("Nebulon");
        Youkai youkai1 = new Youkai("Kitsune");
        Youkai youkai2 = new Youkai("Tengu");

        RegistroOculto registro = new RegistroOculto();
        registro.registrarEntidade(alien1);
        registro.registrarEntidade(alien2);
        registro.registrarEntidade(youkai1);
        registro.registrarEntidade(youkai2);

        registro.registrarEntidade(alien1);

        registro.listarEntidades();
    }
}
