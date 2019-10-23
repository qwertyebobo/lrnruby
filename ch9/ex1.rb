# Класс игральные кости и
# метод cheat для игральных костей

class Die
  def initialize
    roll
  end
  def roll
    @numShow = 1 + rand(6)
  end
  def show
    @numShow
  end
  def cheat num
    @numshow = num
    @numshow
  end
end

puts 'Чит? y/n'
ans = gets.chomp
if ans == 'y'
  puts 'Введите значение от 1 до 6'
  ch = ' '
  while ch.length > 0
    ch = gets.chomp
    if (ch.to_i > 0 and ch.to_i < 7)
      puts 'Вам "случайно" выпало: ' + (Die.new.cheat(ch.to_i)).to_s
    break
    else
      puts 'Введите от 1 до 6 включительно' 
    end
  end
else
  puts 'Вам случайно выпало: ' + (Die.new.show).to_s  
end
