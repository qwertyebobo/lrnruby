# программа спрашивает ваше любимое число,
# прибавляет к нему еденицу и предлагает результат
# в замен

puts 'Введите ваше любимое число'
num1 = gets.chomp
num2 = num1.to_i + 1
puts 'Предлагаю число ' + num2.to_s + ' в замен вашему.'
