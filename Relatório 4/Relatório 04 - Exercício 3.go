package main

import "fmt"
func fibonacci(n int) {
	a, b := 0, 1

	fmt.Print("Sequência de Fibonacci: ")

	for i := 0; i < n; i++ {
		fmt.Printf("%d ", a)
		a, b = b, a+b
	}
}

func main() {
	var n int

	fmt.Print("Quantos números da sequência você quer? ")
	fmt.Scanln(&n)

	fibonacci(n)
}