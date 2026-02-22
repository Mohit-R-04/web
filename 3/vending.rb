products = {
  1 => {name: "Chips", price: 20},
  2 => {name: "Chocolate", price: 40},
  3 => {name: "Juice", price: 30}
}

loop do
  puts "\nAvailable Products:"
  products.each do |num, item|
    puts "#{num}. #{item[:name]} - Rs #{item[:price]}"
  end

  print "Select product number (or type cancel): "
  choice = gets.chomp

  break if choice.downcase == "cancel"

  choice = choice.to_i

  if !products.key?(choice)
    puts "Invalid selection"
    next
  end

  print "Enter quantity (or type cancel): "
  qty_input = gets.chomp
  break if qty_input.downcase == "cancel"

  quantity = qty_input.to_i
  total = quantity * products[choice][:price]

  puts "Total amount = Rs #{total}"

  inserted = 0

  while inserted < total
    print "Insert money: "
    money_input = gets.chomp
    break if money_input.downcase == "cancel"

    inserted += money_input.to_i
    puts "Inserted: Rs #{inserted}"
  end

  if inserted < total
    puts "Transaction cancelled. Returning Rs #{inserted}"
    next
  end

  change = inserted - total

  puts "\n--- Transaction Summary ---"
  puts "Product: #{products[choice][:name]}"
  puts "Quantity: #{quantity}"
  puts "Paid: Rs #{inserted}"
  puts "Change: Rs #{change}"

  print "\nBuy another? (yes/no): "
  again = gets.chomp
  break if again.downcase != "yes"
end

puts "Thank you for using vending machine!"