while s = gets.chomp.to_s
  return if s == "0"
  a = []
  a = s.chars
  puts a.map(&:to_i).sum
end
