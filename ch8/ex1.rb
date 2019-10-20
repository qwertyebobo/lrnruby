# Конвертирует поступившие на ввод числа (из цифр)
# в англ. числительные до милиардов
# реализована ввиде метода
# использование метода к задаче вывод текста "99 бутылок"

def englishNumb numb
 if numb < 0
  return 'Введите неотрицательное число'
 end
 if numb == 0
  return 'zero'
 end

 numString = ''

 onesPlace = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']

 tensPlace = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']

 teenagers = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']

 left = numb
 write = left/1000000000
 left = left - write*1000000000
 
 if write > 0
  billion = englishNumb write
  numString = numString + billion + ' billion'
  if left > 0
   numString = numString + ' '
  end
 end

 write = left/1000000
 left = left - write*1000000

 if write > 0
  million = englishNumb write
  numString = numString + million + ' million'
  if left > 0
   numString = numString + ' '
  end
 end

 write = left/1000
 left = left - write*1000
 
 if write > 0
  thousand = englishNumb write
  numString = numString + thousand + ' thousand'
  if left > 0
   numString = numString + ' '
  end
 end

 write = left/100
 left = left - write*100
 
 if write > 0
  hundreds = englishNumb write
  numString = numString + hundreds + ' hundred'
  if left > 0
   numString = numString + ' '
  end
 end

 write = left/10
 left = left - write*10
 
 if write > 0
  if ((write == 1) and (left > 0))
   numString = numString + teenagers[left - 1]

   left = 0
  else
   numString = numString + tensPlace[write - 1]
  end
  if left > 0
   numString = numString + '-'
  end
 end
 
 write = left
 left = 0 
 
 if write > 0
  numString = numString + onesPlace[write - 1]
 end

 numString
end

#99 Bottles of Beer
#99 bottles of beer on the wall
#99 bottles of beer!
#Take one down, pass it around
#98 bottles of beer on the wall! 

puts 'How many bottles of beer on the wall?'
blnc = gets.chomp

nnbobs = ['Bottles of Beer', 'bottles of beer on the wall', 'bottles of beer!', 'Take one down, pass it around', 'bottles of beer on the wall!']

nnbob = ['bottle of beer on the wall', 'bottle of beer!', 'Take one down, pass it around', 'bottle of beer on the wall!']

lw = 50
abc = englishNumb(blnc.to_i)
puts (abc + ' ' + nnbobs[0] + ':').center(lw)
puts

nb = blnc.to_i

while nb > 0
  if nb == 1
    abc = englishNumb(nb)
    puts (abc + ' ' + nnbob[0]).center(lw)
    puts (abc + ' ' + nnbob[1]).center(lw)
    puts (nnbob[2]).center(lw)
    puts ('Zero ' + nnbobs[4]).center(lw)
    puts ''
    puts ('The End').center(lw)  
  break
  else
    abc = englishNumb(nb)
    puts (abc + ' ' + nnbobs[1]).center(lw)
    puts (abc + ' ' + nnbobs[2]).center(lw)
    puts (nnbobs[3]).center(lw)
 
    nb = nb - 1
 
    if nb == 1
      abc = englishNumb(nb) 
      puts (abc + ' ' + nnbob[3]).center(lw)
      puts ('***').center(lw)
    else
      abc = englishNumb(nb)
      puts (abc + ' ' + nnbobs[4]).center(lw)
      puts ('***').center(lw)
    end  
  end  
end
