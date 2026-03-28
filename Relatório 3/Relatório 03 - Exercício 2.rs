use std::io;

fn eh_impar(numero: i32) -> bool {
    numero % 2 != 0
}

fn main() {
    let mut escolha = String::new();
    let mut num1 = String::new();
    let mut num2 = String::new();

    println!("Jogador 1, escolha 'par' ou 'ímpar':");
    io::stdin()
        .read_line(&mut escolha)
        .expect("Erro ao ler entrada");

    let escolha = escolha.trim().to_lowercase();

    println!("Jogador 1, digite um número:");
    io::stdin()
        .read_line(&mut num1)
        .expect("Erro ao ler entrada");

    let num1: i32 = num1.trim().parse().expect("Digite um número válido");

    println!("Jogador 2, digite um número:");
    io::stdin()
        .read_line(&mut num2)
        .expect("Erro ao ler entrada");

    let num2: i32 = num2.trim().parse().expect("Digite um número válido");

    let soma = num1 + num2;

    let soma_impar = eh_impar(soma);

    let jogador1_escolheu_impar = escolha == "ímpar";

    println!("\nResultado:");
    println!("Soma dos números: {}", soma);

    if (soma_impar && jogador1_escolheu_impar) || (!soma_impar && !jogador1_escolheu_impar) {
        println!("Jogador 1 venceu!");
    } else {
        println!("Jogador 2 venceu!");
    }
}