#include <iostream>

using namespace std;

class Pessoa {
private:
    string nome;
    int idade;

public:
    void setNome(string n) { nome = n; }
    void setIdade(int i) { idade = i; }

    string getNome() { return nome; }
    int getIdade() { return idade; }
};

class Protagonista : public Pessoa {
private:
    int nivel;

public:
    void setNivel(int n) { nivel = n; }
    int getNivel() { return nivel; }
};

class Personagem : public Pessoa {
private:
    int rank;

public:
    void setRank(int r) { rank = r; }
    int getRank() { return rank; }
};

int main() {
    Protagonista p1;
    Personagem p2;

    p1.setNome("Andre");
    p1.setIdade(17);
    p1.setNivel(10);

    p2.setNome("Roberto");
    p2.setIdade(18);
    p2.setRank(7);

    cout << "Protagonista: " << p1.getNome() << " | Nivel: " << p1.getNivel() << endl;

    cout << "Personagem: " << p2.getNome() << " | Rank: " << p2.getRank() << endl;

    return 0;
}