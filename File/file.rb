File.open("./file/example.txt", "a+") do |file|

  file.puts "\n"

  print "Enter your name: "
  name = gets.chomp
  file.puts "Name: #{name}"

  print "Enter your email: "
  email = gets.chomp
  file.puts "Email: #{email}"
end
