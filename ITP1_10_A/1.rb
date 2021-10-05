x1, y1, x2, y2 = gets.split.map(&:to_f)

include Math
def distance(x1, x2, y1, y2)
  res = (x2 - x1) ** 2 + (y2 - y1) ** 2
  puts sqrt(res).floor(8)
end
distance(x1, x2, y1, y2)
