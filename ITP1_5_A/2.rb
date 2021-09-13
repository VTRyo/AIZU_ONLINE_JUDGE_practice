# 入力値n
# n
# n-2
# n

while (h, w = gets.split.map(&:to_i)) do
  return if h == 0 && w == 0
  i = 3
  print "#" * w
  puts ""
  for i in i..h do
    print "#"
    print "." * (w - 2)
    print "#"
    puts ""
    i += 1
  end
  print "#" * w
  puts "\n\n"
end
