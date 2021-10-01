word = gets.chomp.to_s
text = gets(nil).chomp.downcase.split.map(&:to_s)

count = 0
for i in 0...text.size do
  if text[i] == word
    count += 1
  end
end
puts count
