puts "Input upper-right coordinates of the plateau"
a = gets.chomp
texta = a.split
x = texta[0]
y = texta[1]

puts "Input the rover's position"
b = gets.chomp
textb = b.split
bx = textb[0].to_i
by = textb[1].to_i
dir = textb[2]
dir.upcase!

puts "Input a series of instructions telling the rover how to explore the plateau"
c = gets.chomp
c.upcase!
textc = c.split(//)

limit = textc.size

for i in 0..limit do
case textc[i]
when "L"
  if dir == "N"
    dir = "W"
  elsif dir == "W"
    dir = "S"
  elsif dir == "S"
    dir = "E"
  elsif dir == "E"
    dir = "N" 
  else
    puts "wrong input"
  end
when "R"
  if dir == "N"
    dir = "E"
  elsif dir == "E"
    dir = "S"
  elsif dir == "S"
    dir = "W"
  elsif dir == "W"
    dir = "N" 
  else
    puts "wrong input"
  end
when "M"
  if dir == "N"
    by+=1
  elsif dir == "W"
    bx-=1
  elsif dir == "S"
    by-=1
  elsif dir == "E"
    bx+=1 
  else
    puts "wrong input"
  end
end
end

puts bx
puts by
puts dir
