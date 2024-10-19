username = ARGV[0]

# Приветствуем пользователя
puts "Привет, #{username}!"

# Спрашиваем о любимом языке программирования
print "Какой твой любимый язык программирования? "
favorite_language =STDIN.gets.chomp

if favorite_language.downcase == "ruby"
  puts "О, ты знаток! Ruby - прекрасный выбор! "
else
  puts "Интересно! #{favorite_language} - хороший выбор. Но скоро все перейдут на Ruby! "

  # Комментарии для различных языков
  case favorite_language
  when "python"
    puts "Python - хороший выбор, но Ruby - более элегантный!"
  when "javascript"
    puts "JavaScript - для веб-разработки, но Ruby - для всего!"
  when "java"
    puts "Java - солидный язык, но Ruby - более гибкий!"
  end
end
