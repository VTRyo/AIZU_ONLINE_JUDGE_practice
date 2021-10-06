include Math
a,b,c = gets.split.map(&:to_f)

def radian(digree)
  digree * PI / 180 # 角度 * (π \/ 180) = radian
end

def high(b, digree)
  b * sin(radian(digree)) # 三角形の面積公式 h = bsinθ
end

def area(a, b, digree)
  a * high(b, digree) / 2
end

def length(a, b, digree)
  # 底辺a, 斜辺bと角度がわかっているとき、残りのcは
  # c**2 = a**2 + b**2 − (2 * a * b * cosC)
  c = sqrt((a ** 2) + (b ** 2) - (2 * a * b * cos(radian(digree))))
  a + b + c
end

puts area(a, b, c).floor(8)
puts length(a, b, c).floor(8)
puts high(b, c).floor(8)
