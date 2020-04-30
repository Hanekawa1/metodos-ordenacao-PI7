def bubble_sort(lista)
  # Pega a quantidade de elementos da lista
  n = lista.length

  # cria um loop para iteração
  loop do
    
    # cria um controle de troca para finalizar o loop
    swapped = false

    # "for" para iteração 
    # n-1 por que o array começa no zero "times"(vezes) executa
    # o |i| é um controle para utilização de índices no loop
    (n-1).times do |i|
      # se o elemento analisado for maior que o elemento na posição à frente
      if lista[i] > lista[i + 1]
        # os elementos são trocados de lugar
        lista[i], lista[i + 1] = lista[i + 1], lista[i]
        # e é sinalizada a troca pro array
        swapped = true
      end
    end

    # assim que todas as iterações acontecerem, o loop finaliza, pois a variável swapped
    # está como falsa e não entra no if
    break if not swapped
  end

  # retorna a lista ordenada
  lista
end

# Execução
a = [9, 2, 6, 4, 1, 0, 3, 7, 5, 8]

puts 'Antes da ordenação'
p(a)
puts "\n"
puts 'Depois da ordenação'
p bubble_sort(a)
