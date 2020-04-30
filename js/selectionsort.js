function selectionSort(lista) {
  // Percorre todo o array
  for (let i = 0; i < lista.length; i++) {
    // Seleciona o primeiro elemento como o menor elemento
    let minIdx = i;

    // Percorre todo o array a partir do primeiro elemento
    for (let j = i + 1; j < lista.length; j++) {
      // Se o elemento a frente for menor que o elemento selecionado
      if (lista[minIdx] > lista[j]) {
        // Sua posição é considerada a menor
        minIdx = j;
      }
    }
    // Sua posição é trocada com o elemento da iteração

    let temp = lista[i];
    lista[i] = lista[minIdx];
    lista[minIdx] = temp;
  }
  return lista;
}

let lista = [9, 2, 6, 4, 1, 0, 3, 7, 5, 8];
console.log("Antes da ordenação: ");
console.log(lista);

let listaOrdenada = selectionSort(lista);

console.log("Depois da ordenação: ");
console.log(listaOrdenada);
