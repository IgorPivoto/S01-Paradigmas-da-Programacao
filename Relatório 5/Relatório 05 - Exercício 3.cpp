#include <iostream>
using namespace std;

int main() {
    float saldo;
    int opcao;

    cout << "Informe seu saldo inicial: R$ ";
    cin >> saldo;

    do {
        cout << "\n===== MENU =====\n";
        cout << "1. Ver Saldo\n";
        cout << "2. Depositar\n";
        cout << "3. Sacar\n";
        cout << "4. Sair\n";
        cout << "Escolha uma opcao: ";
        cin >> opcao;

        switch(opcao) {
            case 1:
                cout << "Saldo atual: R$ " << saldo << endl;
                break;

            case 2: {
                float deposito;
                cout << "Digite o valor para deposito: R$ ";
                cin >> deposito;
                saldo += deposito;
                cout << "Deposito realizado com sucesso!\n";
                break;
            }

            case 3: {
                float saque;
                cout << "Digite o valor para saque: R$ ";
                cin >> saque;

                if (saque > saldo) {
                    cout << "Saldo insuficiente!\n";
                } else {
                    saldo -= saque;
                    cout << "Saque realizado com sucesso!\n";
                }
                break;
            }

            case 4:
                cout << "Encerrando o programa...\n";
                break;

            default:
                cout << "Opcao invalida!\n";
        }

    } while (opcao != 4);

    return 0;
}