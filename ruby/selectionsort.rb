def selection_sort(lista)
  n = lista.length

  (n-1).times do |i|
    min = i

    (i + 1).upto(n) do |j|
      min = j if lista[j] < lista[min]
    end 

    lista[i], lista[min] = lista[min], lista[i] if min != i
  end

  lista
end

a = [9, 2, 6, 4, 1, 0, 3, 7, 5, 8]
p selection_sort(a)


