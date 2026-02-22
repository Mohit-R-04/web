def calculate_total(cart)
  total = 0

  cart.each do |item|
    name, qty, price = item
    subtotal = qty * price

    if qty > 5
      subtotal *= 0.9   # apply 10% discount
    end

    total += subtotal
  end

  return total
end

cart = [
  ["Laptop", 1, 800],
  ["Headphones", 6, 50],
  ["Mouse", 3, 25]
]

puts "Final total: $#{calculate_total(cart)}"