library = {
"978-0143127741" => {title:"The Alchemist", author:"Paulo Coelho", copies:5},
"978-0062315007" => {title:"Sapiens", author:"Yuval Noah Harari", copies:3},
"978-0451524935" => {title:"1984", author:"George Orwell", copies:4}
}

# Add book
print "Enter title: "
title = gets.chomp

print "Enter author: "
author = gets.chomp

print "Enter ISBN: "
isbn = gets.chomp

print "Enter copies: "
copies = gets.to_i

library[isbn] = {title:title, author:author, copies:copies}
puts "New book added!"

# Update copies
print "Enter ISBN to update copies: "
uid = gets.chomp

if library[uid]
  print "Enter new copies: "
  library[uid][:copies] = gets.to_i
  puts "Book copies updated!"
else
  puts "Book not found"
end

# Remove book
print "Enter ISBN to remove: "
rid = gets.chomp

if library.delete(rid)
  puts "Removed book with ISBN #{rid}"
else
  puts "Book not found"
end

# Search book
print "Enter ISBN to search: "
sid = gets.chomp

if library[sid]
  book = library[sid]
  puts "Title: #{book[:title]}"
  puts "Author: #{book[:author]}"
  puts "Copies: #{book[:copies]}"
else
  puts "Book not found"
end

# Display all
puts "\nLibrary Catalog:"
puts "ISBN | Title | Author | Copies"

library.each do |isbn, book|
  puts "#{isbn} | #{book[:title]} | #{book[:author]} | #{book[:copies]}"
end