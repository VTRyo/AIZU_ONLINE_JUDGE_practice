# 以下のように変数代入したほうが読みやすいと思ったが
# これをすると参照元の配列をすべて書き換えてしまうことになって
# 期待通り動かないため、Array.newをそれぞれmapしている
# room = Array.new(10, 0)
# floor = Array.new(3).map{room}
# roof = Array.new(4).map{floor}

roof = Array.new(4).map{Array.new(3).map{Array.new(10,0)}}

n = gets.to_i
for i in 1..n do
  b,f,r,v = gets.chomp.split.map(&:to_i)
  roof[b-1][f-1][r-1] += v
end

i = 0
j = 0
for i in 0..3 do
  for j in 0..2 do
   puts " #{roof[i][j].join(' ')}"
   puts "#" * 20 if j == 2 && i != 3
  end
end
