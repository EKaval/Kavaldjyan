def delitel(num)
return 1 if num <=1
i=2
 while i**2 <= num
if num % i == 0
num /= i
else
i += 1
end
end
num
end
num = 20
puts "#{num} #{delitel(num)}"
