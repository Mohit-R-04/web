students = [
  ["Alice", "S001", [85,90,78]],
  ["Bob", "S002", [75,80,88]],
  ["Charlie", "S003", [90,92,95]]
]

# Add student
print "Enter new student name: "
name = gets.chomp

print "Enter ID: "
id = gets.chomp

print "Enter grades separated by space: "
grades = gets.chomp.split.map(&:to_i)

students << [name, id, grades]
puts "New student added!"

# Update grades
print "Enter student ID to update grades: "
uid = gets.chomp

students.each do |s|
  if s[1] == uid
    print "Enter new grades: "
    s[2] = gets.chomp.split.map(&:to_i)
    puts "Student grades updated!"
  end
end

# Remove student
print "Enter student ID to remove: "
rid = gets.chomp

# students.delete_if do |s|
#   if s[1] == rid
#     puts "Removed student with ID: #{rid}"
#     true
#   else
#     false
#   end
# end

students.delete_if { |s| s[1] == rid }

# Average
print "Enter ID to calculate average: "
aid = gets.chomp

students.each do |s|
  if s[1] == aid
    avg = s[2].sum.to_f / s[2].length
    puts "Average grade for #{s[0]}: #{avg.round(2)}"
  end
end

# Slice display
print "Enter start and end index: "
start_i, end_i = gets.chomp.split.map(&:to_i)

subset = students[start_i..end_i]

subset.each do |s|
  avg = s[2].sum.to_f / s[2].length
  puts "#{s[0]} (ID: #{s[1]}) - Avg: #{avg.round(2)}"
end

# Display full gradebook
puts "\nGradebook:"
puts "Name ID Grades Average"

students.each do |s|
  avg = s[2].sum.to_f / s[2].length
  puts "#{s[0]} #{s[1]} #{s[2].join(", ")} #{avg.round(2)}"
end