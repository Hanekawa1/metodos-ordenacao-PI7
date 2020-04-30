function insertionSort(lista) {
  for (var i = 1; i < lista.length; i++) {
    let key = lista[i];
    let j = i - 1;

    while (j >= 0 && key < lista[j]) {
      lista[j + 1] = lista[j];
      j -= 1;
      console.log(lista);
    }
    lista[j + 1] = key;
    console.log(lista);
  }
  return lista;
}

let lista = [9, 2, 6, 4, 1, 0, 3, 7, 5, 8];
console.log("Antes da ordenação: ");
console.log(lista);

insertionSort(lista);

console.log("Depois da ordenação: ");
console.log(lista);
