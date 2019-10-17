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

puts (blnc + ' ' + nnbobs[0] + ':').center(lw)
puts

nb = blnc.to_i

while nb > 0
  if nb == 1
    puts (nb.to_s + ' ' + nnbob[0]).center(lw)
    puts (nb.to_s + ' ' + nnbob[1]).center(lw)
    puts (nnbob[2]).center(lw)
    puts ('Zero ' + nnbobs[4]).center(lw)
    puts ''
    puts ('The End').center(lw)  
  break
  else
    puts (nb.to_s + ' ' + nnbobs[1]).center(lw)
    puts (nb.to_s + ' ' + nnbobs[2]).center(lw)
    puts (nnbobs[3]).center(lw)
 
    nb = nb - 1
 
    if nb == 1 
      puts (nb.to_s + ' ' + nnbob[3]).center(lw)
      puts ('***').center(lw)
    else

      puts (nb.to_s + ' ' + nnbobs[4]).center(lw)
      puts ('***').center(lw)
    end  
  end  
end



