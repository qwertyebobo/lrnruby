# программа спрашивает фио, считае количество сиволов в нем и
# выводит результат на экран

puts 'Назовите свое имя'
name1 = gets.chomp
puts 'Назовите свое отчество'
name2 = gets.chomp
puts 'Назовите свою фамилию'
name3 = gets.chomp

namelen = (name1 + name2 + name3).length
puts 'В вашем полном имене ' + namelen.to_s + ' букав.' 
