# 先にr+1, c+1の配列を作成しておくことで
# indexで場所を指定して値を加算することができる
# printして順繰りに表示する方法も考えたが、それだと最後の行列を表現しにくかった
r,c = gets.split.map(&:to_i)
a = Array.new(r+1).map{Array.new(c+1, 0)}
input = []

for i in 1..r do
  input << gets.split.map(&:to_i)
  for j in 1..c do
    a[i-1][j-1] = input[i-1][j-1]
    a[-1][j-1] += input[i-1][j-1]
  end
  a[i-1][-1] = a[i-1].sum
  a[-1][-1] += a[i-1][-1]
end

for i in 1..r+1 do
  puts a[i-1].join(' ')
end
