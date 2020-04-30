# Método de controle de ordenação
# Ele receberá a lista e será responsável em dividir a lista e realizar as chamadas de ordenação
def merge_sort(lista)
  # Se a lista é menor ou igual a 1, ele retorna a própria lista
  if lista.length <= 1
    lista
  # Senão, ele faz a ordenação
  else
    # Aponta o elemento do meio para dividir a lista
    meio = (lista.length / 2).floor

    # Define a parte da esquerda da lista, do elemento 0 até o elemento do meio definido acima
    esquerda = merge_sort(lista[0..meio - 1])

    # Define a parte da direita da lista, do elemento do meio até o último elemento da lista
    direita = merge_sort(lista[meio..lista.length])

    # Manda os dois lados da lista para a ordenação
    merge(esquerda, direita)
  end
end

# Método de ordenação (troca de lugares)
# Recursivo
# Recebe os lados enviados acima
def merge(esquerda, direita)
  # Se a esquerda é vazia, ele retorna a sua direita, pois significa que já está ordenado
  if esquerda.empty?
    direita
  
  # Se a direita é vazia, ele retorna a sua esquerda, pois também significa que já está ordenado
  elsif direita.empty?
    esquerda

  # Se o primeiro item da esquerda for menor que o primeiro item da direita, ele divide as listas
  # e faz a recursão de acordo com os pedaços
  elsif esquerda.first < direita.first
    [esquerda.first] + merge(esquerda[1..esquerda.length], direita)
  else
    [direita.first] + merge(esquerda, direita[1..direita.length])
  end
end

# Execução
array = [2, 6, 7, 9, 0, 1, 5, 3, 8, 4]
puts "Array antes da ordenação"
print array 
puts "\n\n"
puts "Array depois da ordenação"
p merge_sort(array)
