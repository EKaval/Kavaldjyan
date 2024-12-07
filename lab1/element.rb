def find_min_for(arr)
  min = arr[0]
  for i in 1...arr.size
    min = arr[i] if arr[i] < min
  end
  min
end

def find_min_while(arr)
  min = arr[0]
  i = 1
  while i < arr.size
    min = arr[i] if arr[i] < min
    i += 1
  end
  min
end

def find_positive_elements_for(arr)
  arr.select { |x| x > 0 }
end

def find_positive_elements_while(arr)
  positives = []
  i = 0
  while i < arr.size
    positives << arr[i] if arr[i] > 0
    i += 1
  end
  positives
end


def find_first_positive_index_for(arr)
  arr.each_with_index { |x, i| return i if x > 0 }
  -1
end

def find_first_positive_index_while(arr)
  i = 0
  while i < arr.size
    return i if arr[i] > 0
    i += 1
  end
  -1
end


# Пример использования:
arr = [-5, 0, 3, -2, 10, 5, -1]

puts "Минимальный элемент (for): #{find_min_for(arr)}"
puts "Минимальный элемент (while): #{find_min_while(arr)}"
puts "Положительные элементы (for): #{find_positive_elements_for(arr)}"
puts "Положительные элементы (while): #{find_positive_elements_while(arr)}"
puts "Индекс первого положительного элемента (for): #{find_first_positive_index_for(arr)}"
puts "Индекс первого положительного элемента (while): #{find_first_positive_index_while(arr)}"