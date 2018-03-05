def check_the_bucket(bucket)
  return bucket.include? "gold"
end
puts "Say what's in the bucket"
bucket = gets.chomp
check_the_bucket(bucket)


for i in (1..100)
  x = i/3
  y = i/5
  if (i == x*3 && i == y*5)
    puts "FizzBuzz"
  elsif (i == x*3)
    puts "Fizz"
  elsif (i == y*5)
    puts "Buzz"
  else
    puts i
  end
end
