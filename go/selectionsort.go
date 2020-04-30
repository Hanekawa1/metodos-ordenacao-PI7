package main

import (
	"fmt"
)

func main() {
	lista := []int{9, 2, 6, 4, 1, 0, 3, 7, 5, 8}
	fmt.Println("Antes da ordenação: ")
	fmt.Println(lista)

	selectionSort(lista)
	fmt.Println("Depois da ordenação: ")
	fmt.Println(lista)
}

func selectionSort(items []int){
	var n = len(items);
	for i := 0; i < n; i++ {
		var minIdx = i;
		for j := i + 1; j < n; j++ {
			if items[minIdx] > items[j] {
				minIdx = j;
			}
		}

		items[i], items[minIdx] = items[minIdx], items[i];
	}
}