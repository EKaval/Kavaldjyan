def find_max_prime_divisor(number)
  return 1 if number <= 1
  i = 2
  while i * i <= number
    if number % i == 0
      number /= i
      i = 2
    else
      i += 1
    end
  end
  number
end

# Пример использования
number = 123456
puts "Максимальный простой делитель #{number}: #{find_max_prime_divisor(number)}"
