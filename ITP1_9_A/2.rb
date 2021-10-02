while s = gets.chomp.to_s do
  return if s == "-"
  shuffle = gets.to_i
  res = ""
  shuffle.times do
    h = gets.to_i
    cut = s.slice!(0...h)
    s << cut
  end
  puts s
end
