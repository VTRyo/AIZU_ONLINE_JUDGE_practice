t = gets.chomp.to_s
tt = "#{t}#{t}"

input = gets.chomp.to_s
if tt.include?(input)
  puts "Yes"
else
  puts "No"
end
