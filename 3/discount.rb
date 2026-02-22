print "Enter purchase amount: "
amount = gets.to_f

if amount > 5000
  discount = 0.15
elsif amount > 2000
  discount = 0.10
elsif amount > 1000
  discount = 0.05
else
  discount = 0
end

final = amount - (amount * discount)

puts "Original Amount: Rs #{amount}"
puts "Discount: #{discount*100}%"
puts "Final Amount: Rs #{final}"
