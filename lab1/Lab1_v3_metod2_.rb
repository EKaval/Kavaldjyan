def ne_delitsa_na_5(number)
  digits = number.to_s.chars.map(&:to_i)
  digits.reject { |digit| digit % 5 == 0 }.inject(1, :*)
end

number = 123456789
result = ne_delitsa_na_5(number)
puts "Произведение цифр, не делящихся на 5: #{result}"