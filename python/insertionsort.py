def insertionSort(lista):
  for i in range(1, len(lista)):
    key = lista[i]

    j = i - 1
    while j >= 0 and key < lista[j]:
      lista[j + 1] = lista[j]
      j -= 1
    lista[j + 1] = key

a = [9, 2, 6, 4, 1, 0, 3, 7, 5, 8]
print("Antes da ordenação: ")
print(a)

insertionSort(a)

print("Depois da ordenação: ")
print(a)
