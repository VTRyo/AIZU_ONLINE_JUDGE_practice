include Math
n = gets.to_i
x = gets.split.map(&:to_f)
y = gets.split.map(&:to_f)

p1 = 0
p2 = 0
p3 = 0
pp = (x[0] - y[0]).abs
for i in 0...n do
  sum = (x[i] - y[i]).abs
  p1 += sum    # 合計がマンハッタン距離
  p2 += sum**2 # 合計の2乗がユークリッド距離
  p3 += sum**3
  pp = sum if pp < sum # 最大値を取る
end
puts p1.round(6)
puts sqrt(p2).round(6) # 累乗の平方根
puts (p3 ** (1.0/3.0)).round(6) # (** 1/2)がp2なので、p3の場合は (** 1/3)
puts pp.round(6)
