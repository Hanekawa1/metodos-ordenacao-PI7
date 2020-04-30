function bubble_sort(lista) {
  let n = lista.length;
  let swapped = true;

  while (swapped) {
    swapped = false;

    for (let i = 0; i < n; i++) {
      if (lista[i] > lista[i + 1]) {
        let tmp = lista[i + 1];
        lista[i + 1] = lista[i];
        lista[i] = tmp;
        swapped = true;
        // Adicionar essa linha para exibir a execução passo a passo
        // console.log(lista);
      }
    }
  }

  return lista;
}

let lista = [9, 2, 6, 4, 1, 0, 3, 7, 5, 8];
let x = bubble_sort(lista);
console.log("Antes da ordenação:");
console.log(lista);
console.log("Depois da ordenação:");
console.log(x);
