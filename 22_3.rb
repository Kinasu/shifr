require 'digest'

puts "Введите слово или фразу для шифрования: "

frase = gets.chomp

puts "Каким способом зашифровать?
1. MD5
2. SHA1"

way = gets.to_i

if way == 1
  result = Digest::MD5.hexdigest frase
  puts "Вот что получилось: #{result}"
elsif way == 2
  result = Digest::SHA1.hexdigest frase
  puts "Вот что получилось: #{result}"
else 
  puts "Неправильно, выберите снова."
end