# спрашивает начальный и конечный год
# затем выводит все високосные годы между

puts 'Введите начальный год'
strtYr = gets.chomp
puts 'Введите оконечный год'
fnshYr = gets.chomp
puts 'Результат:'

while fnshYr.to_i - strtYr.to_i >= 0 
  if strtYr.to_i % 400 == 0
    puts strtYr.to_s + ' Високосный год'
  elsif  strtYr.to_i % 4 == 0
    puts strtYr.to_s + ' Високосный год'    
    strtYr = strtYr.to_i + 1
  end
  strtYr = strtYr.to_i + 1
end
