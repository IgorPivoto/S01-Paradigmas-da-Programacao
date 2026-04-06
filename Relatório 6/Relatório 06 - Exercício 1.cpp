#include <iostream>
using namespace std;

class Robo {
public:
    string modelo;
    int versao;
    float potenciaLaser;
    int integridade;

    void disparar(Robo &alvo) {
        cout << modelo << " disparou em " << alvo.modelo << "!\n";
        alvo.integridade -= potenciaLaser;

        if (alvo.integridade < 0)
            alvo.integridade = 0;
    }

    void status() {
        cout << "Modelo: " << modelo << " | Integridade: " << integridade << endl;
    }
};

int main() {
    Robo r1, r2;

    r1.modelo = "Modelo-1";
    r1.versao = 1;
    r1.potenciaLaser = 30;
    r1.integridade = 100;

    r2.modelo = "Modelo-2";
    r2.versao = 2;
    r2.potenciaLaser = 25;
    r2.integridade = 100;

    r1.disparar(r2);

    cout << "\nStatus após ataque:\n";
    r1.status();
    r2.status();

    return 0;
}