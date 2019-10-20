# принемает строки + энтер и добавляет в массив;
# два энтера останавливают ввод
# выводит сортированный по алфавиту массив
# исключая повторы

ar = []
str = ' '
while str.length > 0
  str = gets.chomp
  ar.push(str)
end
(1..ar.length - 1).each do |i| 
 a = ar[i]
 j = i
while j > 0 && ar[j - 1] > a do
  ar[j] = ar[j - 1]
  j -= 1
end
ar[j] = a
end
puts ar.uniq

