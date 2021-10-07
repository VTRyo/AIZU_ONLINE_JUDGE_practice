# S = 得点, m = 得点平均, n = 学生数（データ数）
# a**2 = (Σ**n i=1 (Si - m)**2) / n
# 分散=Σ**n i=1 (xi - xi平均)**2) / n
# ↑分散の平方根が標準偏差となる
include Math
while n = gets.to_i do
  return if n == 0
  s = gets.split.map(&:to_f)
  s_avg = s.sum / s.size
  x = 0
  for i in 0...n do
    res = (s[i] - s_avg) ** 2
    x += res
  end
  puts sqrt(x / n).floor(8)
end
