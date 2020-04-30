def selectionSort(lista):
  for i in range(len(lista)):
    minIdx = i
    for j in range(i+1, len(lista)):
      if lista[minIdx] > lista[j]:
        minIdx = j
    
    print("menor indice: " + str(minIdx))
    lista[i], lista[minIdx] = lista[minIdx], lista[i]
    print(lista)
  return lista

a = [9, 2, 6, 4, 1, 0, 3, 7, 5, 8]
print("Antes da ordenação: ")
print(a)

selectionSort(a)

print("Depois da ordenação: ")
print(a)