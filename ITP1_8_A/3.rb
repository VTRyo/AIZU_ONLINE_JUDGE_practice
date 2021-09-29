strings = ('a'..'z').to_a
# gets(nil)を指定すると行区切りなしとみなす
input = gets(nil).chomp.downcase.split("")
for i in 0..25 do
  puts "#{strings[i]} : #{input.count(strings[i])}"
end
