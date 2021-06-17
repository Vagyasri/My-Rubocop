#!/usr/bin/env ruby

puts 'Hello! This is a sample Rubocop'.upcase
sleep(2)
puts "\nIt will scan the whitespace errors, new line errors, indentation errors, and closing tag errors".upcase
sleep(2)
puts "\nPlease enter the relative path of the file to be checked: ".upcase
sleep(2)
puts ''

path = gets.chomp
cop_checker(path)
puts ''
puts "Inspecting the file..\n"
sleep(2)
puts "Offenses:\n"

errors = error_list.values.flatten
if @errors.length.zero?
  puts "1 file inspected, #{'no offenses'.green}detected"
else
  err_msg
  puts "1 file inspected, #{"#{@errors.length} offense".yellow}detected."
end
