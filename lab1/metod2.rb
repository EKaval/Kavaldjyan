def product_of_non_divisible_by_5(number)
  product = 1
  number.to_s.each_char do |digit|
    product *= digit.to_i unless digit.to_i % 5 == 0
  end
  product
end

# Пример использования
number = 123456
puts "Произведение цифр числа #{number}, не делящихся на 5: #{product_of_non_divisible_by_5(number)}"
