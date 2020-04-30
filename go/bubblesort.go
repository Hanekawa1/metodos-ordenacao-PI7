package main

import (
	"fmt"
)

func main() {
	a := []int{9, 2, 6, 4, 1, 0, 3, 7, 5, 8}
	fmt.Println("Antes da ordenação: ")
	fmt.Println(a)

	bubblesort(a)
	fmt.Println("Depois da ordenação: ")
	fmt.Println(a)
}

func bubblesort(items []int){
	var (
		n = len(items) - 1
		swapped = true
	)
	for swapped {
		swapped = false

		for i := 0; i < n; i++ {
			if items[i] > items[i + 1]{
				items[i + 1], items[i] = items[i], items[i + 1]
				swapped = true
			}
		}
		n = n - 1 
	}
}