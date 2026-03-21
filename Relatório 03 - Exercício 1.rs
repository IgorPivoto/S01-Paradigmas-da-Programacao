use std::io;

fn verificar_senha(senha: &str) -> bool {
    if senha.len() < 10 {
        return false;
    }

    let mut contador_numeros = 0;
    let mut tem_maiuscula = false;

    for c in senha.chars() {
        if c.is_digit(10) {
            contador_numeros += 1;
        }

        if c.is_ascii_uppercase() {
            tem_maiuscula = true;
        }
    }

    if contador_numeros < 2 {
        return false;
    }

    if !tem_maiuscula {
        return false;
    }

    true
}

fn main() {
    loop {
        println!("Digite uma senha:");

        let mut senha = String::new();

        io::stdin()
            .read_line(&mut senha)
            .expect("Erro ao ler a entrada");

        let senha = senha.trim(); 

        if verificar_senha(senha) {
            println!("A senha é válida, seja bem vindo!");
            break;
        } else {
            println!("Senha inválida! Tente novamente.\n");
        }
    }
}