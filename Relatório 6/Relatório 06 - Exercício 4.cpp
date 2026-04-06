#include <iostream>
#include <vector>

using namespace std;

class MembroConselho {
public:
    string nome;

    virtual void saudar() {
        cout << "Um membro do conselho faz uma reverência silenciosa.\n";
    }
};

class Anao : public MembroConselho {
public:
    void saudar() override {
        cout << "Pela força da montanha, eu sou " << nome << " e honro nosso aço!\n";
    }
};

class Orc : public MembroConselho {
public:
    void saudar() override {
        cout << "Pelo sangue e glória, eu sou " << nome << " e trago a força de minha tribo!\n";
    }
};

class Draconato : public MembroConselho {
public:
    void saudar() override {
        cout << "Pelo sopro dos ancestrais, eu sou " << nome << " e falo em nome dos dragões!\n";
    }
};

int main() {
    vector<MembroConselho*> conselho;

    Anao a;
    a.nome = "Joseph";

    Orc o;
    o.nome = "Walter";

    Draconato d;
    d.nome = "Gus";

    conselho.push_back(&a);
    conselho.push_back(&o);
    conselho.push_back(&d);

    for (auto membro : conselho) {
        membro->saudar();
    }

    return 0;
}