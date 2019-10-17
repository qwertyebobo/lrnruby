# программа спрашивает фио по отдельности
# и приветствует по фио
puts 'Назовите свое имя'
name1 = gets.chomp
puts 'Назовите свое отчество'
name2 = gets.chomp
puts 'Назовите свою фамилию'
name3 = gets.chomp
puts 'Здравствуйте ' + name3 + ' ' + name1 + ' ' + name2 + '.'
