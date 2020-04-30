def partition(lista, min, max):
  i = (min - 1)
  pivot = lista[max]

  for j in range(min, max):
    if lista[j] <= pivot:
      i += 1
      lista[i], lista[j] = lista[j], lista[i]
  
  lista[i + 1], lista[max] = lista[max], lista[i + 1]
  return (i + 1)


def quicksort(lista, min, max):
  if min < max:
    pi = partition(lista, min, max)

    quicksort(lista, min, pi - 1)
    quicksort(lista, pi + 1, max)

a = [2, 6, 7, 9, 0, 1, 5, 3, 8, 4]
n = len(a)

print("Antes da ordenação: ")
print(a)

quicksort(a, 0, n-1)

print("Depois da ordenação: ")
print(a)
