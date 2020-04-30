package main

import (
	"fmt"
)

func main() {
	lista := []int{9, 2, 6, 4, 1, 0, 3, 7, 5, 8}
	fmt.Println("Antes da ordenação: ")
	fmt.Println(lista)

	insertionSort(lista)
	fmt.Println("Depois da ordenação: ")
	fmt.Println(lista)
}

func insertionSort(items []int){
	var n = len(items)
	for i :=1; i < n; i++ {
			j := i
			for j > 0 {
				if items[j - 1] > items[j]{
					items[j - 1], items[j] = items[j], items[j - 1]
				}
				j = j - 1
			}
	}
}