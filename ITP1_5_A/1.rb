while (h, w = gets.split.map(&:to_i)) do
  return if h == 0 && w == 0
  i = 1
  for i in i..h do
    print "#" * w
    puts ""
    i += 1
  end
  puts ""
end
