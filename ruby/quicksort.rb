class Array
  def quicksort
    return [] if empty?

    # Seleciona um elemento aleatório no array para ser o pivot
    pivot = delete_at(rand(size))

    # divide o array de acordo com o pivot selecionado
    esquerda, direita = partition(&pivot.method(:>))

    # faz uma recursão para ordenar
    return *esquerda.quicksort, pivot, *direita.quicksort
  end
end

# Execução
arr = [2, 6, 7, 9, 0, 1, 5, 3, 8, 4]
p arr.quicksort
