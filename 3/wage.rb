print "Enter age: "
age = gets.to_i

if age < 19 || age > 40
  puts "Enter appropriate age"
  exit
end

print "Enter gender (male/female): "
gender = gets.chomp.downcase

print "Enter days worked: "
days = gets.to_i

if age <= 30
  rate = (gender == "male") ? 800 : 850
else
  rate = (gender == "male") ? 900 : 950
end

total = rate * days

puts "Daily wage: Rs #{rate}"
puts "Total wage: Rs #{total}"