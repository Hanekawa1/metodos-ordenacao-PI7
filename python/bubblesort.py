def bubble_sort(lista):
  n = len(lista) - 1
  swapped = True

  while swapped:
    swapped = False

    for i in range(n):
      if lista[i] > lista[i + 1]:
        print("Trocando " + str(lista[i]) + " com " + str(lista[i + 1]))
        lista[i], lista[i + 1] = lista[i + 1], lista[i]
        
        swapped = True
        # adicionar essa linha para exibir a execução passo a passo
        print(lista)
    
  return lista


a = [9, 2, 6, 4, 1, 0, 3, 7, 5, 8]
print(bubble_sort(a))
