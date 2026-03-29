package main

import "fmt"
func Triangulo(a, b, c int) bool {
	return a+b > c && a+c > b && b+c > a
}

func main() {
	var a, b, c int

	fmt.Print("Digite o primeiro lado: ")
	fmt.Scanln(&a)

	fmt.Print("Digite o segundo lado: ")
	fmt.Scanln(&b)

	fmt.Print("Digite o terceiro lado: ")
	fmt.Scanln(&c)

	if !Triangulo(a, b, c) {
		fmt.Println("Erro: Os valores não formam um triângulo.")
		return
	}

	switch {
	case a == b && b == c:
		fmt.Println("Triângulo Equilátero")
	case a == b || a == c || b == c:
		fmt.Println("Triângulo Isósceles")
	default:
		fmt.Println("Triângulo Escaleno")
	}
}