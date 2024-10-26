require 'open3'

puts "Введите команду Ruby:"
ruby_code = gets.chomp

puts "Введите команду операционной системы:"
os_command = gets.chomp

# Выполнение команды Ruby
puts "Результат выполнения команды Ruby:"
stdout, stderr, status = Open3.capture3(ruby_code)
puts stdout
puts stderr if stderr != ""
puts "Статус выполнения: #{status.exitstatus}"

# Выполнение команды операционной системы
puts "Результат выполнения команды операционной системы:"
stdout, stderr, status = Open3.capture3(os_command)
puts stdout
puts stderr if stderr != ""
puts "Статус выполнения: #{status.exitstatus}"