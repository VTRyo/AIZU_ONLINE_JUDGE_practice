# += a[i][j] * b[j]することで
# 行列Aとベクトルbの積ベクトルcが計算できる

n, m = gets.split.map(&:to_i)
a = []
n.times do
  a << gets.split.map(&:to_i)
end
b = []
m.times do
  b << gets.to_i
end

i = 0
j = 0

for i in 1..n do
  c = 0
  for j in 1..m do
   c += a[i-1][j-1] * b[j-1]
   j += 1
  end
  i += 1
  puts c

end
