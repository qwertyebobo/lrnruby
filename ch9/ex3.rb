# изменить программу для интерактивного 
# взаимодествия с классом Dragon:
# реализовать возможность вводить команды feed, walk
# и другие.

class Dragon
  
  def initialize name
    @name = name
    @asleep = false
    @stuffInBelly     = 10  #  Он сыт.
    @stuffInIntestine =  0  #  Ему не надо гулять.
    
    puts @name + ' родился.'
  end
  
  def feed
    puts 'Вы кормите ' + @name + '(а).'
    @stuffInBelly = 10
    passageOfTime
  end
  
  def walk
    puts 'Вы выгуливаете ' + @name + '(а).'
    @stuffInIntestine = 0
    passageOfTime
  end
  
  def putToBed
    puts 'Вы укладываете ' + @name + '(а) спать.'
    @asleep = true
    3.times do
      if @asleep
        passageOfTime
      end
      if @asleep
        puts @name + ' храпит, наполняя комнату дымом.'
      end
    end
    if @asleep
      @asleep = false
      puts @name + ' медленно просыпается.'
    end
  end
  
  def toss
    puts 'Вы подбрасываете ' + @name + '(а) в воздух.'
    puts 'Он хихикает, обжигая при этом вам брови.'
    passageOfTime
  end
  
  def rock
    puts 'Вы нежно укачиваете ' + @name + '(а).'
    @asleep = true
    puts 'Он быстро задрёмывает...'
    passageOfTime
    if @asleep
      @asleep = false
      puts '...но просыпается, как только вы перестали качать.'
    end
  end
  
  private
  
  #  "private" означает, что определённые здесь методы являются
  #  внутренними методами этого объекта.  (Вы можете кормить
  #  вашего дракона, но не можете спросить его, голоден ли он.)
  
  def hungry?  #  голоден?
    #  Имена методов могут заканчиваться знаком "?".
    #  Как правило, мы называем так только, если метод
    #  возвращает true или false, как здесь:
    @stuffInBelly <= 2
  end
  
  def poopy?  #  кишечник полон?
    @stuffInIntestine >= 8
  end
  
  def passageOfTime # проходит некоторое время
    if @stuffInBelly > 0
      #  Переместить пищу из желудка в кишечник.
      @stuffInBelly     = @stuffInBelly     - 1
      @stuffInIntestine = @stuffInIntestine + 1
    else  #  Наш дракон страдает от голода!
      if @asleep
        @asleep = false
        puts 'Он внезапно просыпается!'
      end
      puts @name + ' проголодался! Доведённый до крайности, он съедает ВАС!'
      exit  #  Этим методом выходим из программы.
    end
    
    if @stuffInIntestine >= 10
      @stuffInIntestine = 0
      puts 'Опаньки!  ' + @name + ' сделал нехорошо...'
    end
    
    if hungry?
      if @asleep
        @asleep = false
        puts 'Он внезапно просыпается!'
      end
      puts 'В желудке у ' + @name + '(а) урчит...'
    end
    
    if poopy?
      if @asleep
        @asleep = false
        puts 'Он внезапно просыпается!'
      end
      puts @name + ' подпрыгивает, потому что хочет на горшок...'
    end
  end
  
end

puts 'Вы запустили интэрактивную программу: "Питомец Дракон"'
puts 'Придумайте имя...'

name = gets.chomp
pet = Dragon.new name

coms = ['feed - кормить', 'walk - гулять', 'toss - развлекать', 
      'puttobed - укладывать спать', 'rock - укачивать']
mv = ' '
psoft = 'Прошло некоторое время...'

puts 'Взаимодуйствуйте с питомцем вводя команды:'
puts coms

while mv.length > 0 
  puts 'Что делаем?'
  mv = gets.chomp
  if mv == 'feed'
    pet.feed
    puts psoft
  elsif mv == 'walk'
    pet.walk
    puts psoft
  elsif mv == 'toss'
    pet.toss
    puts psoft
  elsif mv == 'puttobed'
    pet.putToBed
    puts psoft
  elsif mv == 'rock'
    pet.rock
    puts psoft
  else
    puts 'Займитесь чемто полезным...'
    puts 'Команды для питомца такие:'
    puts coms
  end
end
