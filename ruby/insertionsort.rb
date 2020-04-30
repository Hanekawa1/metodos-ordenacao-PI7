def insertion_sort(lista)
  final = []
  final << lista.shift
  for i in lista
    final_index = 0
    while final_index < final.length
      if i <= final[final_index]
        final.insert(final_index, i)
        break
      elsif final_index == final.length - 1
        final.insert(final_index + 1, i)
        break
      end
      final_index += 1
    end
  end
  final
end

a = [9, 2, 6, 4, 1, 0, 3, 7, 5, 8]
p insertion_sort(a)

# https://medium.com/@marcifey/insertion-sort-in-ruby-b538c55591f4