# форматирует главу, название, номер страницы
# под содержанием

title = 'Содержание'
chpt1 = 'Глава 1:'
text1 = 'Числа'
pg1   = 'страница 1'
chpt2 = 'Гдава 2:'
text2 = 'Буквы'
pg2   = 'страница 72'
chpt3 = 'Глава 3:'
text3 = 'Переменные'
pg3   = 'страница 118'

lW = 50

puts title.center(lW)
puts ''
puts (chpt1 + '  ' + text1).ljust(lW/2) + pg1.rjust(lW/2)
puts (chpt2 + '  ' + text2).ljust(lW/2) + pg2.rjust(lW/2)
puts (chpt3 + '  ' + text3).ljust(lW/2) + pg3.rjust(lW/2)
