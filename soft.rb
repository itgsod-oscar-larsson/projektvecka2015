## Tärningssnurr 1.0! Av: Oscar Larsson (typ)

def snurr(dices, sides)
  for i in 1..dices
    print "Tärning #{i}  "
  end
  puts
  timer = rand(4..11)
  timer*10.times do
    print "                                                            "
    print "\r"
    for i in 1..dices
      print "    #{rand(1..(sides))}      "
    end
    print "\r"
    sleep(0.1)
  end
  3.times { puts }
end

def input
  puts "Hur många tärningar vill du slå?"
  dices = gets.chomp.to_i
  until dices > 0 and dices < 6
    puts "Inkorrekt svar. Var god försök igen!"
    dices = gets.chomp.to_i
  end
  puts
  puts "Hur många sidor har tärningarna?"
  sides = gets.chomp.to_i
  until sides > 1 and sides < 7
    puts "Inkorrekt svar. Var god försök igen!"
    sides = gets.chomp.to_i
  end
  puts
  print "Klicka på Enter för att slå tärning"
  if dices == 1
    puts "en!"
  else
    puts "arna!"
  end
  gets.chomp
  snurr(dices, sides)
end

input