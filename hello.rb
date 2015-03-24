require 'colorize'


$hash = Hash.new

for i in 1..100
  $hash["#{i}"] = rand(1000)
end

puts "Det här är lite nummer med saker: #{$hash.to_s}".red.blink

puts "Daniel behöver hjälp".blink
