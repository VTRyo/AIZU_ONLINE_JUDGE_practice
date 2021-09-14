# 奇数行は#で始まる
# 偶数業は.で始まる
# 行と列を足して割って余りがでないときは#

while (h, w = gets.split.map(&:to_i)) do
  return if h == 0 && w == 0
  
  h.times do |x|
    w.times do |y|
      if ((x+y) % 2) == 0
        print "#"
      else
        print "."
      end
    end
    puts
  end
  puts
end
