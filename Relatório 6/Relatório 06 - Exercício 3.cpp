#include <iostream>

using namespace std;

class MembroInatel {
public:
    string nomeCompleto;

    virtual void identificar() {
        cout << "Sou um membro da comunidade Inatel: " << nomeCompleto << endl;
    }
};

class Coordenador : public MembroInatel {
public:
    string departamento;

    void identificar() override {
        cout << "Meu nome é " << nomeCompleto << ", sou o coordenador do departamento de " << departamento << " no Inatel.\n";
    }
};

class Pesquisador : public MembroInatel {
public:
    string laboratorio;

    void identificar() override {
        cout << "Meu nome é " << nomeCompleto << ", e realizo pesquisas no laboratório " << laboratorio << " do Inatel.\n";
    }
};

int main() {
    MembroInatel* m1;
    MembroInatel* m2;

    Coordenador c;
    c.nomeCompleto = "Carlos Silva";
    c.departamento = "Computação";

    Pesquisador p;
    p.nomeCompleto = "Ana Souza";
    p.laboratorio = "Cybersecurity";

    m1 = &c;
    m2 = &p;

    m1->identificar();
    m2->identificar();

    return 0;
}