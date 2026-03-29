#include <iostream>
using namespace std;

float multiplicaArray(float arr[], int tamanho) {
    float resultado = 1.0;

    for (int i = 0; i < tamanho; i++) {
        resultado *= arr[i];
    }

    return resultado;
}

int main() {
    int tamanho;

    cout << "Quantos valores deseja inserir? ";
    cin >> tamanho;

    float arr[tamanho]; 

    for (int i = 0; i < tamanho; i++) {
        cout << "Digite o valor " << i + 1 << ": ";
        cin >> arr[i];
    }

    float resultado = multiplicaArray(arr, tamanho);

    cout << "Produto dos valores: " << resultado << endl;

    return 0;
}