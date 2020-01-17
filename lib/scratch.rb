def say_hello
  print "Enter your name: "
  name = gets.strip
  result = "Hi #{name}!"
  puts result
  result
end

say_hello