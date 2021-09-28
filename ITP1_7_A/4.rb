n, m, l = gets.split.map(&:to_i)

# n * lの配列
c = Array.new(n).map{Array.new(l, 0)}

a = []
b = []

# a, bそれぞれを配列として記録
n.times do
  a << gets.split.map(&:to_i)
end
m.times do
  b << gets.split.map(&:to_i)
end

# a[i][k] * b[k][j] = c[i][j]であるという公式（問題文記載）をもとに
# 配列cに代入していく
# わかりやすかった参考資料: https://snowtree-injune.com/2019/11/23/matrix-product/
# 0..n-1は0...nでも表現できる
for i in 0..n-1 do
  for j in 0..l-1 do
    for k in 0..m-1 do
      c[i][j] += a[i][k] * b[k][j]
    end
  end
end
c.each do |a|
  puts a.join(' ')
end
