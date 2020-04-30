function partition(lista, min, max) {
  let i = min - 1;
  pivot = lista[max];

  for (let j = min; j < max; j++) {
    if (lista[j] <= pivot) {
      i += 1;
      let tmp = 0;
      tmp = lista[i];
      lista[i] = lista[j];
      lista[j] = tmp;
    }
  }
  let tmp2 = 0;
  tmp2 = lista[i + 1];
  lista[i + 1] = lista[max];
  lista[max] = tmp2;
  return i + 1;
}

function quicksort(lista, min, max) {
  if (min < max) {
    let pi = partition(lista, min, max);

    quicksort(lista, min, pi - 1);
    quicksort(lista, pi + 1, max);
  }
}

let array = [2, 6, 7, 9, 0, 1, 5, 3, 8, 4];
let n = array.length;

console.log("Antes da ordenação: ");
console.log(array);

quicksort(array, 0, n - 1);

console.log("Depois da ordenação: ");
console.log(array);
