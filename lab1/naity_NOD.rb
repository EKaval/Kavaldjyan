def find_gcd(a, b)
  while b != 0
    a, b = b, a % b
  end
  a
end


def find_max_odd_non_prime_divisor(number)
  max_divisor = 1
  for i in (3..number / 2).step(2)
    if number % i == 0 && !is_prime?(i)
      max_divisor = i
    end
  end
  max_divisor
end

def is_prime?(number)
  return false if number <= 1
  for i in (2..(number)/2)
    return false if number % i == 0
  end
  true
end

def product_of_digits(number)
  number.to_s.chars.map(&:to_i).inject(:*)
end

def calculate_gcd(number)
  max_odd_non_prime = find_max_odd_non_prime_divisor(number)
   product_of_digits_num = product_of_digits(number) # Вычисляем произведение цифр
  find_gcd(max_odd_non_prime, product_of_digits_num)
end

# Пример использования
number = 123456
puts "НОД максимального нечетного непростого делителя #{number} и произведения цифр: #{calculate_gcd(number)}"
