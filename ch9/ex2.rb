# Класс апельсиновое дерево
# с методами: рост, увеличение возраста,
# количество апельсинов

class OrangeTree

  def initialize name
    @name = name        # Жизнь дерева
    @orangeCount = 0    # Количество апельсинов на дереве
    @treeAge = 0        # Возраст дерева
    @treeHeight = 0.0   # Высота дерева
  end

  # Возвращает высоту дерева
  def height
    @treeHeight = @treeAge * 0.5
    puts 'Высота дерева составляет: ' + @treeHeight.to_s + ' метра.'
  end

  # При вызове увеличивает возраст дерева
  def oneYearOrange
    @treeAge = @treeAge + 1
    @orangeCount = 0     # Не собраный урожай пропал
    puts 'Возраст дерева составляет: ' + @treeAge.to_s + ' года.'
    countTheOrange
  end

  # Возвращает число апельсинов на дереве
  def countTheOrange
    if @treeAge < 3
      @orangeCount = 0
      puts 'До 3-х лет на дереве не растут апельсины.'
    elsif (@treeAge >= 3) or (@treeAge < 8)
      @orangeCount = @treeAge * 10
    else 
      @life = false
      puts 'Дерево засохло, апельсинов больше небудет.'
    end
  end

  # Собирает апельсины
  def pickAnOrange pick
    if @orangeCount == 0
      puts 'В этом году нет урожая.'
    else
      puts 'Собирайте урожай.'
      @orangeCount = @orangeCount - pick
      puts 'Осталось не собранно: ' + @orangeCount.to_s + ' апельсинов.'
      puts 'Не собранное пропадет на следущий год.'
    end
  end

end

tree = OrangeTree.new 'OrangeTree'
tree.oneYearOrange
tree.height
tree.oneYearOrange
tree.oneYearOrange
tree.pickAnOrange(5)
tree.oneYearOrange
tree.height
tree.pickAnOrange(10)
tree.oneYearOrange
tree.height
tree.pickAnOrange(30)
